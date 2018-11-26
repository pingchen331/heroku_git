#!/bin/bash
docker run -it --name heroku -v $(pwd)/config/heroku/netrc:/root/.netrc -v $(pwd)/config/git/git-credentials:/root/.git-credentials -v $(pwd)/config/git/gitconfig:/root/.gitconfig -p 5000:5000 heroku_git:latest /bin/bash
