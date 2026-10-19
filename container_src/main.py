import os

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"message": "Hello, World!", "stage": os.environ.get("STAGE", "unknown")}


@app.get("/health")
def health():
    return {"status": "ok"}
