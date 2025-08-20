FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir flask psycopg2-binary
ENV FLASK_APP=app.py FLASK_RUN_HOST=0.0.0.0
CMD ["flask", "run", "-p", "5000"]
