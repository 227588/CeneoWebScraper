import mysql.connector
from db_config import *

class Database:
    def __init__(self):
        self.host=MYSQL_HOST,
        self.user=MYSQL_USER,
        self.password=MYSQL_PASSWORD,
        self.database=MYSQL_DATABASE
        self.connection = None
        self.cursor = self.connection.cursor()

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


    def add_product(self, entry):
        query = "INSERT INTO entries (content) VALUES (%s)"
        values = (entry,)
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.lastrowid


    def all_products(self):
        query = "SELECT * FROM entries"
        self.cursor.execute(query)
        return self.cursor.fetchall()
        