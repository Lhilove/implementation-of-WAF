FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir flask psycopg2-binary
ENV FLASK_APP=app.py FLASK_RUN_HOST=0.0.0.0
CMD ["flask", "run", "-p", "5000"]
# Use the official OWASP ModSecurity CRS image
FROM owasp/modsecurity-crs:nginx

# Copy your custom modsecurity.conf into the container
COPY modsecurity.conf /etc/nginx/modsecurity.d/
