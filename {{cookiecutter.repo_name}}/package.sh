#!/bin/bash

set -xeou
yum install -y zip python36

BASEDIR=/data
PIPPACKAGESDIR=${BASEDIR}/lambda-packages

cd ${BASEDIR}

zip {{cookiecutter.lambda_name}}.zip {{cookiecutter.lambda_file_name}}

mkdir -p ${PIPPACKAGESDIR}
pip-3.6 install -t ${PIPPACKAGESDIR} -r requirements.txt
cd ${PIPPACKAGESDIR}
zip -r ../{{cookiecutter.lambda_name}}.zip .
