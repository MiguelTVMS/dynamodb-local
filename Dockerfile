FROM openjdk:8-jre-slim

LABEL maintainer="joao@miguel.ms"
LABEL description="DynamoDB Container to be used locally for development"
LABEL repository="https://github.com/jmtvms/dynamodb-local.git"
LABEL version="1.0.0"

ENV DYNAMO_DB_DOWNLOAD_REGION="us-west-2"
ENV DYNAMO_DB_VERSION="latest"
ENV DOWNLOAD_URL="https://s3-${DYNAMO_DB_DOWNLOAD_REGION}.amazonaws.com/dynamodb-local/dynamodb_local_${DYNAMO_DB_VERSION}.tar.gz"
ENV PORT=8000
ENV JAVA_OPTS=""

# Installing DynamoDB
RUN apt-get install wget -y
RUN wget ${DOWNLOAD_URL}
RUN apt-get uninstall wget -y
WORKDIR /opt/dynamodb-local/
RUN tar zxvf /dynamodb_local_${DYNAMO_DB_VERSION}.tar.gz -C /opt/dynamodb-local/
RUN rm /dynamodb_local_${DYNAMO_DB_VERSION}.tar.gz
RUN mkdir /var/dynamodb-data

ENTRYPOINT java -Djava.library.path=./DynamoDBLocal_lib ${JAVA_OPTS} -jar DynamoDBLocal.jar --sharedDb -port ${PORT} -dbPath /var/dynamodb-data

EXPOSE 8000
VOLUME [ "/var/dynamodb-data" ]