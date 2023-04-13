FROM node:13-alpine

# Optionally define - environment variables but best option is define in the docker-composer.
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# Multiple RUN command - execute any Linux command inside the container
RUN mkdir -p /home/app

# Only one-time COPY command - executes on the HOST machine!
COPY ./app /home/app

CMD ["node", "/home/app/server.js"]
