# DynamoDB-Local

DynamoDB Container to be used for local environments.

The main idea of this container is to facilitate the utilization of DynamoDB for local development

```bash

docker run -d --rm -p 8000:8000 jmtvms/dynamodb-local

```

## Environments variables

Those are the available environment variables for this container.

### JAVA_OPTS

You can set options to the jvm running the DynamoDB adding them here. Be sure to know what you are doing or the DynamoDB may even not start.

```bash

docker run -d --rm -p 2000:2000 -e "JAVA_OPTS=-Xms256m" jmtvms/dynamodb-local

```

### PORT

You can change the port wich DynamoDB service is running inside the container. I doubt anyone wants to mess with that since you can map the port on the host running the container but I'm really adept of flexibility...

```bash

docker run -d --rm -p 2000:2000 -e "PORT=2000" jmtvms/dynamodb-local

```