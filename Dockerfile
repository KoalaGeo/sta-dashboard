FROM python:3.7.10-stretch
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt

# Filename for cached database
# Type: str
ENV SQLITE_DB_FILENAME=cached_1017.sqlite3

# If drop all existing cached records and restart caching
# Type: boolean (True or False)
ENV DROP_ALL=False

# Port number which the Flask web app will be running on
# Type: int
ENV FLASK_HOST_PORT=8080

EXPOSE 8080

CMD ["sh", "./docker-entrypoint.sh"] 
