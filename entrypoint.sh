#!/bin/bash
pip3 install -r requirements.txt

if [ "$1" = "run" ]
  then
    python manage.py runserver 0.0.0.0:8000
else
    $@
fi
