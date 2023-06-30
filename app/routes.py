from app import app
from flask import render_template, request, redirect, url_for
from app.scraper import Scraper
from app.database import Database
import requests
import json


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')


@app.route('/extraction', methods=['POST', 'GET'])
def extraction():
    if request.method == "POST":
        product_code = request.form["product_id"]
        url = f"https://www.ceneo.pl/{product_code}#tab=reviews"
        response = requests.get(url)
        if response.status_code != 200 or product_code=="":
            return render_template('extraction.html', error="Podano błędny kod", error_no=response.status_code)
        else:
            sc = Scraper()
            db = Database()
            db.connect()
            if db.check_if_product_already_exists(product_code):
                return render_template('extraction.html', error="Ten produkt już istnieje w bazie", error_no=409)
            
            sc.extraction(product_code)
            sc.add_to_database()
            # db.close()
            return redirect(url_for('product', product_code=product_code))

    return render_template('extraction.html')


@app.route('/product/<product_code>')
def product(product_code):
    with open(f"./app/static/opinions/{product_code}.json", 'r', encoding='utf-8') as jsf:
        js = json.load(jsf)
    return render_template("product.html", product_code=product_code, opinions_list=js)


@app.route('/product_list')
def product_list():
    db = Database()
    db.connect()
    result = db.get_all_products()
    return render_template('product_list.html', result=result)


@app.route('/author')
def author():
    return render_template('author.html')
