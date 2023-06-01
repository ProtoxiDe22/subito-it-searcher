FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY subito-searcher.py .
COPY start.sh .

CMD ["sh", "start.sh"]
