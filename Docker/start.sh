#!/bin/bash
cd /app
gunicorn -w 3 -b 0.0.0.0:8111 app:app

