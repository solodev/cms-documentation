#!/usr/bin/env bash
aws s3 sync dist s3://cms-documentation --delete --acl public-read