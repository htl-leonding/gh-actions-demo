#!/bin/bash

RUNNER=$(ls gh-actions-demo-*-runner.jar)

echo "starting quarkus $RUNNER..."
java -Dquarkus.profile=docker -jar $RUNNER
