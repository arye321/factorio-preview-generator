FROM python:3.9-slim

WORKDIR /app

RUN pip install --no-cache-dir Flask

COPY . /app/
RUN apt-get update
RUN apt-get install xz-utils

RUN tar -xf linux64

EXPOSE 5000

# Command to start the server
RUN mkdir static

CMD ["flask", "--app","index", "run","--host=0.0.0.0"]