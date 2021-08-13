FROM python:3.7-slim

COPY requirements.txt /tmp/

# install dependencies
# run commands

RUN apt update && apt upgrade -y && apt install -y default-libmysqlclient-dev build-essential
RUN pip3 install --no-cache-dir --upgrade -r /tmp/requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 8000

RUN ["chmod", "+x", "./wait-for-it.sh"]

CMD ["sh", "-c", "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000"]
