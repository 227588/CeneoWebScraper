from bs4 import BeautifulSoup
import json
import os
import pandas as pd
from matplotlib import pyplot as plt
import numpy as np
import requests
from app.utils import get_element, selectors
from app.database import Database
import simplejson

class Scraper():
    def extraction(self, product_code):
        self.product_code = product_code
        self.all_opinions = []

        url = f"https://www.ceneo.pl/{product_code}#tab=reviews"
        while(url):
            response = requests.get(url)
            page = BeautifulSoup(response.text, 'html.parser')
            opinions = page.select("div.js_product-review")
            for opinion in opinions:
                single_opinion = {}
                for key, value in selectors.items():
                    single_opinion[key] = get_element(opinion,*value)
                self.all_opinions.append(single_opinion)
            try:
                url = "https://www.ceneo.pl"+get_element(page, "a.pagination__next", "href")
            except TypeError:
                url = None

        try:
            os.mkdir("./app/static/opinions")
        except FileExistsError:
            pass
        with open(f"./app/static/opinions/{self.product_code}.json", "w", encoding="UTF-8") as jf:
            json.dump(self.all_opinions, jf, indent=4,ensure_ascii=False)


        # od tego momentu wyrzuca błą main loop


        opinions = pd.read_json(json.dumps(self.all_opinions,ensure_ascii=False))
        # # opinions.score = opinions.score.map(lambda x: float(x[:-2].replace(",",".")))
        opinions.score = opinions.score.map(lambda x: float(x.split("/")[0].replace(",",".")))

        stats = {
            "opinions_count" : len(opinions.index),
            "pros_count" : int(opinions.pros.map(bool).sum()),
            "cons_count" : int(opinions.cons.map(bool).sum()),
            "avg_score" : opinions.score.mean().round(2), 
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
        with open(f"./app/static/stats/{product_code}.json", 'w', encoding = "UTF-8") as jsf:
            simplejson.dump(stats, jsf, indent=4, ensure_ascii=False, ignore_nan=True)

        self.stats = stats
        return 0







    def add_to_database(self):
        self.db = Database()
        self.db.add_record(self.product_code, self.all_opinions, self.stats)

    


    

    
    # #udział poszczególnych rekomendacji w ogólnej liczbie opinii
    # recommendation = opinions["recommendation"].value_counts(dropna=False).sort_index()
    # recommendation.plot.pie(
    #     label="", 
    #     autopct="%1.1f%%",
    #     labels = ["Nie polecam", "Polecam", "Nie mam zdania"],
    #     colors = ["crimson", "forestgreen", "gray"]
    #     )
    # plt.legend(bbox_to_anchor=(1.0,1.0))
    # plt.savefig(f"./app/static/plots/{product_code}_recommendation.png")
    # plt.close()
    # stats["score"] = score.to_dict()
    # stats["recommendation"] = recommendation.to_dict()
    # try:
    #     os.mkdir("./app/static/stats")
    # except FileExistsError:
    #     pass
    # with open(f"./app/static/stats/{product_code}.json", "w", encoding="UTF-8") as jf:
    #     json.dump(stats, jf, indent=4,ensure_ascii=False)
    # return redirect(url_for("product", product_code=product_code))
