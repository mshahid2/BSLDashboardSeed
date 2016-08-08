#!/bin/bash

# Exit with nonzero exit code if anything fails
set -e

#find our repo name from the directory name
REPO_NAME=$(git rev-parse --show-toplevel)

#set our source and traget branches
SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"

#pull requests and commits to other branches shouldn't try to deploy
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
    echo "Skipping deploy; just doing a build."
    exit 0
fi

#create a temp directory that will store the bower.json file
mkdir tmp_bower

#clone this repo, and go into that folder.
git clone https://github.com/predixdev/${REPO_NAME}.git ghp_tmp
cd ghp_tmp

#set up our variables and configs
git config user.name "Travis CI"
git config user.email "travisCI@ge.com"
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}

#copy the bower.json file out of the directory to a temp one
cp bower.json ../tmp_bower/bower.json
#and checkout gh-pages - create it if it doesn't exist.
git checkout $TARGET_BRANCH || git checkout --orphan $TARGET_BRANCH
#copy the bower.json file from our temp directory into the current one, overriding it, and passing a yes in there's a prompt
yes | cp ../tmp_bower/bower.json bower.json

#install your new tag through bower, it will fail without forcing it.
bower install ${REPO_NAME} --force

#do the git stuff
git add .
rev=$(git rev-parse --short HEAD)
git commit -m "rebuild pages at ${rev}"

#and deploy using the encrypted/unencrypted key.
ENCRYPTED_KEY_VAR="encrypted_${ENCRYPTION_LABEL}_key"
ENCRYPTED_IV_VAR="encrypted_${ENCRYPTION_LABEL}_iv"
ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
openssl aes-256-cbc -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in deploy_key.enc -out deploy_key -d
chmod 600 deploy_key
eval `ssh-agent -s`
ssh-add deploy_key

#Now that we're all set up, we can push.
git push $SSH_REPO $TARGET_BRANCH
