from app import app
from flask import render_template, request, redirect, url_for
from app.scraper import Scraper
from app.database import Database
import requests




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
    # pobranie zplików JSON opinii o prosukcie i statystyk o nim
    # przekazanie opinii i statystyk do szablonu HTML 
    return render_template('product.html', product_code=product_code)


@app.route('/product_list')
def product_list():
    db = Database()
    db.connect()
    result = db.get_all_products()
    

    # lista kodów produktów o których są pobrane opinie
    # pobranie z plików JSON ze statystykami danych do listy słowników
    # przekazanie listy złownikow do szablonu HTML
    return render_template('product_list.html', result=result)


# routing dla wykresów
@app.route('/author')
def author():
    return render_template('author.html')

# @app.route('/name/',defaults={'name': "Anonim"})
# @app.route("/name/<name>")
# def name(name=None):
#     return f"Hello {name}"