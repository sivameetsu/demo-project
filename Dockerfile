FROM python:3.7-slim

COPY requirements.txt /tmp/

# install dependencies
RUN apt update && apt upgrade -y
RUN pip3 install --no-cache-dir --upgrade -r /tmp/requirements.txt

ADD . /app
WORKDIR /app

EXPOSE 8000

CMD ["sh", "-c", "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000"]