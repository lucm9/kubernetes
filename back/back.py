from flask import Flask, flash, redirect, render_template, request, session, abort, jsonify
from random import randint
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import text, exc
import json
import os

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ['SQLALCHEMY_DATABASE_URI']
app.config['SQLALCHEMY_ECHO'] = True
db = SQLAlchemy(app)

@app.route('/')
def index():
    return jsonify({"message": "Welcome to the Quotes API!"}), 200

@app.route('/api/v1/get-quote', methods=['GET'])
def get_quote():
    length_query = text('SELECT COUNT(id) FROM quotes')
    length_result = db.engine.execute(length_query)
    length = length_result.fetchone()[0]
    random_id = randint(1, int(length))
    sql = text('SELECT quote FROM quotes WHERE id=:id')
    result = db.engine.execute(sql, {'id': random_id})
    random_quote = result.first()[0]
    return jsonify({'random_quote': random_quote}), 200

@app.route('/api/v1/set-quote', methods=['POST'])
def set_quote():
    quote = request.json.get('quote')
    sql = text('INSERT INTO quotes (quote) VALUES (:quote)')
    try:
        db.engine.execute(sql, {'quote': quote})
    except exc.IntegrityError:
        return jsonify({'success': False}), 500
    return jsonify({'success': True}), 200

@app.route('/healthz', methods=['GET'])
def healthz():
    try:
        db.session.query("1").from_statement(text("SELECT 1")).all()
        return jsonify({'up': True}), 200
    except:
        return jsonify({'up': False}), 500

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=3000, debug=True)
