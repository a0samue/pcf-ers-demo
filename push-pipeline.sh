#!/bin/bash
fly -t main set-pipeline --pipeline pcf-java -l credentials.yml --config <(cat ci/resources.yml ci/jobs.yml)
fly -t main unpause-pipeline --pipeline pcf-java
