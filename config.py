import os


class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'this is not important for sqli'
    WTF_CSRF_ENABLED = False
