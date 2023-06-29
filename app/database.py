import mysql.connector
# from app.db_config import *

MYSQL_HOST='localhost'
MYSQL_USER='root'
MYSQL_PASSWORD=''
MYSQL_DATABASE='ceneowebscraper'

class Database:
    def __init__(self):
        self.host=MYSQL_HOST
        self.user=MYSQL_USER
        self.password=MYSQL_PASSWORD
        self.database=MYSQL_DATABASE
        self.connection = None
        self.cursor = None


    def connect(self):
        self.connection = mysql.connector.connect(
            host=self.host,
            user=self.user,
            password=self.password,
            database=self.database
        )
        self.cursor = self.connection.cursor()


    def close(self):
        if self.cursor:
            self.cursor.close()
        if self.connection:
            self.connection.close()

    
    def get_last_products_index(self):
        query = "SELECT MAX(product_id) FROM products"
        self.cursor.execute(query)
        result = self.cursor.fetchone()
        if result:
            return result[0]
        else:
            return None

    def check_if_product_already_exists(self, product_code):
        query = f"SELECT count(product_id) FROM `products` WHERE product_code={product_code}"
        self.cursor.execute(query)
        result = self.cursor.fetchone()
        if result[0]>0:
            return True
        else:
            return False


    def add_record(self, product_code, all_opinions, stats):
        self.connect()

        query = "INSERT INTO products (product_id, product_code) VALUES (%s, %s)"
        values = ('NULL', product_code)
        self.cursor.execute(query, values)
        self.connection.commit()
        self.last_products_index=self.get_last_products_index()

        for opinion in all_opinions:
            query = "INSERT INTO opinions (id, opinion_id, author, recommendation, score, purchased, published_at, purchased_at, thumbs_up, thumbs_down, content, product_id) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
            values = ('NULL', opinion["opinion_id"], opinion["author"], opinion["recommendation"], opinion["score"], opinion["purchased"], opinion["published_at"], opinion["purchased_at"], opinion["thumbs_up"], opinion["thumbs_down"], opinion["content"], self.last_products_index)
            # print(opinion["opinion_id"], end="\n")
            self.cursor.execute(query, values)
            self.connection.commit()

            for pro in opinion["pros"]:    
                query = "INSERT INTO pros (pros_id, text, opinion_id) VALUES (%s, %s, %s)"
                values = ('NULL', pro, opinion["opinion_id"])
                self.cursor.execute(query, values)
                self.connection.commit()


            for con in opinion["cons"]:
                query = "INSERT INTO cons (cons_id, text, opinion_id) VALUES (%s, %s, %s)"
                values = ('NULL', con, opinion["opinion_id"])
                self.cursor.execute(query, values)
                self.connection.commit()

        # dodawanie stats
        query = "INSERT INTO stats (stats_id, opinions_count, pros_count, cons_count, avg_score, product_id) VALUES (%s, %s, %s, %s, %s, %s)"
        values = ('NULL', stats["opinions_count"], stats["pros_count"], stats["cons_count"], stats["avg_score"], product_code)
        self.cursor.execute(query, values)
        self.connection.commit()


        # print(stats['opinions_count'])



    def get_all_products(self):
        query = "SELECT product_id, opinions_count, cons_count, pros_count, avg_score FROM `stats`"
        self.cursor.execute(query)
        return self.cursor.fetchall()
        
db = Database()
db.connect()
# db.add_product("123")
print(db.check_if_product_already_exists(12062914))