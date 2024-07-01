# Use an official Python runtime as a parent image
FROM python:3.10-slim-bookworm

# Set the working directory in the container
WORKDIR /demo

# Install Poetry
RUN pip install --no-cache-dir poetry

# Copy the current directory contents into the container
COPY containerization/ /demo/containerization/

# Copy only the files needed for installing dependencies
COPY pyproject.toml poetry.lock* /demo/

# Install project dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["uvicorn", "containerization.main:app", "--host", "0.0.0.0", "--port", "8000"]
