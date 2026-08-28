#!/bin/bash
args=("$@")

tag(){
    VERSION="${args[1]}"
    git tag -a v${VERSION} -m "tag release"
    git push --tags
}

#DEVOPS
export AWS_PROFILE=default
DATE=$(date +%d%H%M)

# Load RETYPE_KEY (and anything else) from .env if present. Needed past
# Retype's 100-page free-tier limit -- see .env.example. Never commit .env.
if [ -f .env ]; then
    set -a
    source .env
    set +a
fi

init(){
    npm install retypeapp
}

watch(){
    retype start
}

build(){
    retype build
}

s3(){
    ./deploy.sh
}


$*