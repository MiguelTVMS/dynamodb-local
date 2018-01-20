# DynamoDB-Local

DynamoDB Container to be used for local environments.

The main idea of this container is to facilitate the utilization of DynamoDB for local development

In this container I didn't use the `CMD` on the docker file so you can for example start it with a command of your own for creating a table of unit tests just like the example below.

```bash

docker run -d --rm -p 8000:8000 jmtvms/dynamodb-local 

```
#### Environments variables

##### **JAVA_OPTS**

You can set options to the jvm running the DynamoDB adding them here. Be sure to know what you are doing or the DynamoDB may even not start.

##### **PORT**

You can change the port wich DynamoDB service is running inside the container. I doubt anyone wants to mess with that since you can map the port on the host running the container but I'm really adept of flexibility...