#!/bin/bash

DATE=$(date +%H-%M-%S)
DB_HOST=$1
DB_PWD=$2
DB_NAME=$3
BUCKET_NAME=$4
AWS_ACCESS_KEY_ID=$5
AWS_SECRET_ACCESS_KEY=$6

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID && \  
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY && \ 
mysqldump -u root -h $DB_HOST -p$DB_PWD $DB_NAME > /tmp/db-$DATE.sql && \
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME
