FROM python:3.10

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py

ENV FLASK_ENV=development

CMD ["flask", "run", "--host", "0.0.0.0"]