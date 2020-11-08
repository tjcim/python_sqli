import pymysql
from flask import render_template, flash, redirect

from app import app
from config import Config
from app.forms import LoginForm, SearchForm


def render_table(
    form,
    query,
    current_page,
    search_value="",
    title="",
    data="",
    error="",
    record_count="",
):
    return render_template(
        "table.j2.html",
        title=title,
        form=form,
        data=data,
        search_value=search_value,
        query=query,
        current_page=current_page,
        error=error,
        record_count=record_count,
    )


def execute_query(query):
    error = ""
    data = ""
    try:
        with pymysql.connect(**Config.CONN) as cursor:
            cursor.execute(query)
            data = cursor.fetchall()
    except Exception as e:  # noqa
        app.logger.error(e)
        error = e.args[1]
    return (data, error)


@app.route("/")
@app.route("/index")
def index():
    return render_template(
        "index.j2.html", title="index", username="trevor", current_page="home"
    )


@app.route("/mysql/sqli", methods=["GET", "POST"])
def mysql_sqli():
    form = SearchForm()
    if form.validate_on_submit():
        search_value = form.search.data
        query = (
            "SELECT * FROM MOCK_DATA WHERE `first_name` LIKE '%"
            + form.search.data
            + "%' LIMIT 10;"
        )
        data, error = execute_query(query)
        query = query.split("--")[0]
        return render_table(
            form,
            query,
            "mysql_sqli",
            search_value=search_value,
            title="MySQL Union",
            data=data,
            error=error,
        )
    query = "SELECT * FROM MOCK_DATA LIMIT 10;"
    data, error = execute_query(query)
    query = query.split("--")[0]
    return render_table(form, query, "mysql_sqli", title="MySQL Union", data=data)


@app.route("/mysql/time", methods=["GET", "POST"])
def mysql_time():
    query = ""
    search_value = ""
    current_page = "mysql_time"
    title = "MySQL Time-Based"
    form = SearchForm()
    if form.validate_on_submit():
        search_value = form.search.data
        query = f"SELECT * FROM MOCK_DATA WHERE `email` = '{form.search.data}';"
        execute_query(query)
        return render_template(
            "time.j2.html",
            title=title,
            form=form,
            search_value=search_value,
            current_page=current_page,
            query=query,
            success=True,
        )
    return render_template(
        "time.j2.html",
        title=title,
        form=form,
        search_value=search_value,
        current_page=current_page,
        query=query,
    )


@app.route("/mysql/boolean", methods=["GET", "POST"])
def mysql_boolean():
    email = ""
    query = ""
    search_value = ""
    current_page = "mysql_boolean"
    title = "MySQL Boolean-Based"
    form = SearchForm()
    if form.validate_on_submit():
        search_value = form.search.data
        query = (
            f"SELECT email FROM MOCK_DATA WHERE `first_name` = '{form.search.data}';"
        )
        print(query)
        data, error = execute_query(query)
        if len(data) > 1:
            data = ""
        else:
            try:
                email = data[0]["email"]
            except IndexError as e:
                print(e)
                email = ""
        return render_template(
            "boolean.j2.html",
            title=title,
            form=form,
            search_value=search_value,
            current_page=current_page,
            email=email,
            query=query,
        )
    return render_template(
        "boolean.j2.html",
        title=title,
        form=form,
        search_value=search_value,
        current_page=current_page,
        query=query,
    )


@app.route("/psql/time", methods=["GET", "POST"])
def psql_time():
    form = LoginForm()
    if form.validate_on_submit():
        flash(
            f"Login requested for user {form.user.data}, remember={form.remember.data}"
        )
        return redirect("/index")
    return render_template("login.j2.html", title="Login PostgreSQL", form=form)


@app.route("/psql/boolean", methods=["GET", "POST"])
def psql_boolean():
    form = LoginForm()
    if form.validate_on_submit():
        flash(
            f"Login requested for user {form.user.data}, remember={form.remember.data}"
        )
        return redirect("/index")
    return render_template("login.j2.html", title="Login PostgreSQL", form=form)
