#!/usr/bin/env sh

git add -A
git commit -m 'deploy'

subtree push --prefix dist origin gh-pages

cd -