#!/usr/bin/env bash

virtualenv -p python3 venv
. venv/bin/activate
pip install -r requirements-tests.txt
nosetests -v --with-cover --cover-erase --cover-package={{cookiecutter.lambda_file_name|replace('.py', '')|lower}} tests/*.py
flake8 {{cookiecutter.lambda_file_name}}
deactivate
