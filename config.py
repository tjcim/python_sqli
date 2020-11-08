import os
import pymysql


class Config:
    SECRET_KEY = os.environ.get("SECRET_KEY") or "this is not important for sqli"
    WTF_CSRF_ENABLED = False
    CONN = {
        "host": "127.0.0.1",
        "user": "vagrant",
        "password": "vagrant",
        "db": "python_sqli",
        "cursorclass": pymysql.cursors.DictCursor,
    }
