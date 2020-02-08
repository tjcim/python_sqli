from flask import render_template, flash, redirect

from app import app, Database
from app.forms import LoginForm


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html', title='index', username='trevor')


@app.route('/mysql/time', methods=['GET', 'POST'])
def mysql_time():
    form = LoginForm()
    if form.validate_on_submit():
        db = Database()
        query = "SELECT * FROM users WHERE `user` = '" + form.user.data + "'"
        query += " AND password = '" + form.password.data + "';"
        app.logger.info(f"Running query: {query}")
        try:
            db.cursor.execute(query)
        except Exception as e:  # noqa
            app.logger.error(e)
        return render_template('login.html', title='Login MySQL', form=form)
    return render_template('login.html', title='Login MySQL', form=form)


@app.route('/mysql/boolean', methods=['GET', 'POST'])
def mysql_boolean():
    form = LoginForm()
    if form.validate_on_submit():
        results = ""
        db = Database()
        query = "SELECT * FROM users WHERE `user` = '" + form.user.data + "'"
        query += " AND password = '" + form.password.data + "';"
        app.logger.info(f"Running query: {query}")
        try:
            db.cursor.execute(query)
        except Exception as e:  # noqa
            app.logger.error(e)
        else:
            results = db.cursor.fetchone()
        if results:
            flash(f'Login successful for user {form.user.data}')
        return render_template('login.html', title='Login MySQL', form=form)
    return render_template('login.html', title='Login MySQL', form=form)


@app.route('/psql/time', methods=['GET', 'POST'])
def psql_time():
    form = LoginForm()
    if form.validate_on_submit():
        flash(f'Login requested for user {form.user.data}, remember={form.remember.data}')
        return redirect('/index')
    return render_template('login.html', title='Login PostgreSQL', form=form)


@app.route('/psql/boolean', methods=['GET', 'POST'])
def psql_boolean():
    form = LoginForm()
    if form.validate_on_submit():
        flash(f'Login requested for user {form.user.data}, remember={form.remember.data}')
        return redirect('/index')
    return render_template('login.html', title='Login PostgreSQL', form=form)
