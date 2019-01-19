FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY application.py /usr/local/src/application.py

EXPOSE  5000

CMD ["python", "/usr/local/src/application.py"]
