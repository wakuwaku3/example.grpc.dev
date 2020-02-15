#!/bin/bash
cd /

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}

if [ ! -d /repo/.git ]; then
  git clone https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/wakuwaku3/example.grpc.ruby.client.git repo
fi

cd /repo/
bundle install --path vendor/bundle 
sh -c "while :; do sleep 10; done"
