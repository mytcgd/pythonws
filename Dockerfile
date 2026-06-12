FROM python:3.10-alpine

WORKDIR /app

RUN apk add --no-cache bash wget curl procps

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

ENV PORT=8080
EXPOSE 8080

CMD ["python3", "app.py"]
