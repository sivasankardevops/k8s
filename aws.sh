#!/bin/bash
mvn clean package
aws s3 cp /home/ubuntu/1/s/target/spring-boot-web.jar s3://azure-devops-sprint-boot-output/spring-boot-web.jar
aws s3api get-object --bucket azure-devops-sprint-boot-output --key spring-boot-web.jar /home/ubuntu/deploy/test.jar
java -jar /home/ubuntu/deploy/test.jar
