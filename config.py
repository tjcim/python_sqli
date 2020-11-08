import os
import pymysql
from pymysql.constants import CLIENT


class Config:
    SECRET_KEY = os.environ.get("SECRET_KEY") or "this is not important for sqli"
    WTF_CSRF_ENABLED = False
    CONN = {
        "host": "127.0.0.1",
        "user": "vagrant",
        "password": "vagrant",
        "db": "python_sqli",
        "client_flag": CLIENT.MULTI_STATEMENTS,
        "cursorclass": pymysql.cursors.DictCursor,
    }
