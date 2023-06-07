from app import app
from flask import render_template

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/extraction')
def extraction():
    return render_template('extraction.html')

@app.route('/product')
def product():
    return render_template('product.html')

@app.route('/product_list')
def product_list():
    return render_template('product_list.html')

@app.route('/author')
def author():
    return render_template('author.html')

# @app.route('/name/',defaults={'name': "Anonim"})
# @app.route("/name/<name>")
# def name(name=None):
#     return f"Hello {name}"