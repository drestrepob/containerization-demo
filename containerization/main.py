from fastapi import FastAPI

app = FastAPI(
    title="Containerization API demo",
    description="This is a simple API to demonstrate containerization with Docker",
    version="0.1.0",
)


@app.get("/")
async def home():
    return {"message": "Hello from the API!"}


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, port=8000)
