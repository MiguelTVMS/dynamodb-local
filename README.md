# DynamoDB-Local

DynamoDB Container to be used for local environments.

The main idea of this container is to facilitate the utilization of DynamoDB for local development

```sh

docker run -d --rm -p 8000:8000 jmtvms/dynamodb-local

```

## Environments variables

Those are the available environment variables for this container.

### JAVA_OPTS

You can set options to the jvm running the DynamoDB adding them here. Be sure to know what you are doing or the DynamoDB may even not start.

```sh

docker run -d --rm -p 2000:2000 -e "JAVA_OPTS=-Xms256m" jmtvms/dynamodb-local

```

## Parameters

You can pass DynamoDB command line parameters to the containers using the docker arguments on the run command. You can learn more about those parameters [here](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html).

The argument _--shareDb_ is passed by default but if you pass any argument on the run command the default arguments are overridden, so if you want the _--shareDb_ to be kept you have to pass it again.

Example:

```sh

docker run -d --rm -p 2000:2000 jmtvms/dynamodb-local --sharedDb -port 2000

```

This command will run the DynamoDB inside the container in the port 2000.