FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY subito-searcher.py .
CMD ["python", "subito-searcher.py", "--addtoken ", "${TOKEN}", "--addchatid", "${CHATID}"]
CMD ["python", "subito-searcher.py", "--add ", "${NAME1}", "--url", "${URL1}"]
CMD ["python", "subito-searcher.py", "--daemon ", "--delay", "10"]
