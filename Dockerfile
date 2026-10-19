# syntax=docker/dockerfile:1
FROM python:3.12-slim

WORKDIR /app

COPY container_src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY container_src/main.py .

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
