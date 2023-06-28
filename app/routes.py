from app import app
from flask import render_template, request, redirect, url_for
from app.utils import get_element, selectors
import requests
from bs4 import BeautifulSoup
import json
import os
import pandas as pd
from matplotlib import pyplot as plt
import numpy as np


class Routes():
    @app.route('/')
    @app.route('/index')
    def index():
        return render_template('index.html')


    @app.route('/extraction', methods=['POST', 'GET'])
    def extraction():
        if request.method == "POST":
            product_code = request.form["product_id"]

            all_opinions = []
            url = f"https://www.ceneo.pl/{product_code}#tab=reviews"
            while(url):
                print(url)
                response = requests.get(url)
                page = BeautifulSoup(response.text, 'html.parser')
                opinions = page.select("div.js_product-review")
                for opinion in opinions:
                    single_opinion = {}
                    for key, value in selectors.items():
                        single_opinion[key] = get_element(opinion,*value)
                    all_opinions.append(single_opinion)
                try:
                    url = "https://www.ceneo.pl"+get_element(page, "a.pagination__next", "href")
                except TypeError:
                    url = None

            print(len(all_opinions))
            try:
                os.mkdir("./app/static/opinions")
            except FileExistsError:
                pass
            with open(f"./app/static/opinions/{product_code}.json", "w", encoding="UTF-8") as jf:
                json.dump(all_opinions, jf, indent=4,ensure_ascii=False)

            opinions = pd.read_json(json.dumps(all_opinions))
            # opinions.score = opinions.score.map(lambda x: float(x[:-2].replace(",",".")))
            opinions.score = opinions.score.map(lambda x: float(x.split("/")[0].replace(",",".")))

            stats = {
                "opinions_count" : len(opinions.index),
                "pros_count" : int(opinions.pros.map(bool).sum()),
                "cons_count" : int(opinions.cons.map(bool).sum()),
                "avg_score" : opinions.score.mean().round(2), 
                "reccomendation" :  ""
            }

            score = opinions.score.value_counts().reindex(list(np.arange(0,5.5,0.5)), fill_value=0)
            score.plot.bar(color="hotpink")
            plt.xticks(rotation=0)
            plt.title("Histogram ocen")
            plt.xlabel("Liczba gwiazdek")
            plt.ylabel("Liczba opinii")
            for index, value in enumerate(score):
                plt.text(index, value+0.5, str(value), ha="center")

            try:
                os.mkdir("./app/static/plots")
            except FileExistsError:
                pass    
            plt.savefig(f"./app/static/plots/{product_code}_score.png")
            plt.close()

            #udział poszczególnych rekomendacji w ogólnej liczbie opinii
            recommendation = opinions["recommendation"].value_counts(dropna=False).sort_index()
            recommendation.plot.pie(
                label="", 
                autopct="%1.1f%%",
                labels = ["Nie polecam", "Polecam", "Nie mam zdania"],
                colors = ["crimson", "forestgreen", "gray"]
                )
            plt.legend(bbox_to_anchor=(1.0,1.0))
            plt.savefig(f"./app/static/plots/{product_code}_recommendation.png")
            plt.close()
            stats["score"] = score.to_dict()
            stats["recommendation"] = recommendation.to_dict()
            try:
                os.mkdir("./app/static/stats")
            except FileExistsError:
                pass
            with open(f"./app/static/stats/{product_code}.json", "w", encoding="UTF-8") as jf:
                json.dump(stats, jf, indent=4,ensure_ascii=False)
            return redirect(url_for("product", product_code=product_code))

        return render_template('extraction.html')


    @app.route('/product/<product_code>')
    def product(product_code):
        # pobranie zplików JSON opinii o prosukcie i statystyk o nim
        # przekazanie opinii i statystyk do szablonu HTML 
        return render_template('product.html', product_code=product_code)


    @app.route('/product_list')
    def product_list():
        # lista kodów produktów o których są pobrane opinie
        # pobranie z plików JSON ze statystykami danych do listy słowników
        # przekazanie listy złownikow do szablonu HTML
        return render_template('product_list.html')


    # routing dla wykresów
    @app.route('/author')
    def author():
        return render_template('author.html')

    # @app.route('/name/',defaults={'name': "Anonim"})
    # @app.route("/name/<name>")
    # def name(name=None):
    #     return f"Hello {name}"