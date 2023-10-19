FROM python:3.9-slim

# Working directory
WORKDIR /app

# Copy requirements file and install dependencies
RUN pip install --no-cache-dir Flask

# Copy the rest of the project files
COPY . /app/
RUN apt-get update
RUN apt-get install xz-utils

RUN tar -xf linux64

# Expose the server port
EXPOSE 5000

# Command to start the server

CMD ["flask","--host=0.0.0.0", "--app","index", "run"]