#!/bin/bash


java -javaagent:/Users/bellis/spring.nr.agents/registration.nr/newrelic.jar \
-Dnewrelic.config.file=/Users/bellis/spring.nr.agents/registration.nr/newrelic.yml \
-jar target/microservices-demo-2.0.0.RELEASE.jar registration

sleep 20

java -javaagent:/Users/bellis/spring.nr.agents/accounts.nr/newrelic.jar \
-Dnewrelic.config.file=/Users/bellis/spring.nr.agents/accounts.nr/newrelic.yml \
-jar target/microservices-demo-2.0.0.RELEASE.jar accounts

sleep 20

java -javaagent:/Users/bellis/spring.nr.agents/web.nr/newrelic.jar \
-Dnewrelic.config.file=/Users/bellis/spring.nr.agents/web.nr/newrelic.yml \
-jar target/microservices-demo-2.0.0.RELEASE.jar web
