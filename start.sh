#!/bin/bash

java -Djava.library.path=./DynamoDBLocal_lib $JAVA_OPTS -jar DynamoDBLocal.jar -dbPath /var/dynamodb-data $@