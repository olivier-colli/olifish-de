#! /usr/bin/env bash

galleries='./galeries'

# init
rm -Rf $galleries
mkdir $galleries

# -- init git
git branch -D gh-pages
git checkout --orphan gh-pages

# compose index and galleries page
npm run compose-index
npm run compose-galleries

git add --force index.html $galleries
git commit -m "add galleries and index"

git push https://$token@github.com/olivier-colli/olifish-fr.git
