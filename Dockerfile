FROM python:3.10-alpine

WORKDIR /app

COPY . .

ARG PORT=8080
ENV PORT=$PORT
EXPOSE $PORT

RUN apk update && \
    apk add --no-cache bash wget curl procps && \
    chmod +x app.py && \
    pip install -r requirements.txt

CMD ["python3", "app.py"]
