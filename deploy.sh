#!/bin/sh -x
basepath=$(cd `dirname $0`; pwd)
cd $basepath
rm -rf public
hugo --theme=nofancy --buildDrafts
cd public

## update RSS atom
cp -f index.xml atom.xml

## commit
git init
git remote add origin git@github.com:nekowasabi/nekowasabi.github.io
git add --all
git commit -m "blog update $(date '+%Y/%m/%d %H:%M:%S')"

## deploy to githu
echo "publish ok? [enter]"
read
git push origin master -f
