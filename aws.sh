#!/bin/bash
mvn clean package
aws s3api put-object --bucket azure-devops-sprint-boot-output --key /home/ubuntu/vsts/work/1/s/target/spring-boot-web.jar
