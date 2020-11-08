import logging

from flask import Flask

# import pymysql

from config import Config


logging.basicConfig(
    filename="/tmp/app.log",
    filemode="a",
    level=logging.INFO,
    format="{asctime} [{levelname}] {message}",
    style="{",
    datefmt="%H:%M:%S",
)

app = Flask(__name__)
app.config.from_object(Config)


# class Database:
#     def __init__(self):
#         host = "127.0.0.1"
#         user = "vagrant"
#         password = "vagrant"
#         db = "python_sqli"

#         self.connect = pymysql.connect(
#             host=host, user=user, password=password, db=db,
#             cursorclass=pymysql.cursors.DictCursor,
#         )
#         self.cursor = self.connect.cursor()


from app import routes  # noqa
