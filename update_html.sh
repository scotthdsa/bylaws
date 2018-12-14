#!/bin/sh

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git checkout -b gh-pages
git add index.html
git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"

git remote add origin-pages https://${GH_TOKEN}@github.com/scotthdsa/bylaws.git > /dev/null 2>&1
git push --quiet --set-upstream origin-pages gh-pages
