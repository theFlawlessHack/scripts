#!/bin/bash
# initializes a heroku runnable flask based api template

echo -e "flask api setup begin"
echo -e "removing required files if they exist"
rm -f Procfile
rm -f requirements.txt
rm -f runtime.txt
rm -f uwsgi.ini

echo -e "creating required files"
vim app.py -c '$put=\"#!flask/bin/python\
\
from flask import Flask, jsonify, request\
app = Flask(__name__)\
\
# GET something\
@app.route(</some_path>)\
def get_something():\
\treturn jsonify({<your data>})\"' -c 'wq'

vim Procfile -c '$put=\"web: uwsgi uwsgi.ini\"' -c 'wq'

vim requirements.txt -c '$put=\"Flask\
Flask-RESTful\
uwsgi\"' -c 'wq'

vim runtime.txt -c '$put=\"python-3.5.2\"' -c 'wq'

vim uwsgi.ini -c '$put=\"[uwsgi]\
http-socket = :$(PORT)\
master = true\
die-on-term = true\
module = app:app\
memory-report = true\"' -c 'wq'

echo 'flask api setup complete'
