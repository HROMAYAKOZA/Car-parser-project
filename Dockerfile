FROM python:3.11.6

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && pip install -r requirements.txt

COPY services /app/services
COPY flask_app.py /app
COPY .env /app

EXPOSE 5000 5000

CMD [ "python", "flask_app.py" ]