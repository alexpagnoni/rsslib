#!/bin/bash

WHERE=`pwd`

if [ -a .encoded ]; then
  TGZ_NAME="rsslib-enc-1.0.0.tgz"
  DIR_NAME="rsslib-enc"
else
  TGZ_NAME="rsslib-1.0.0.tgz"
  DIR_NAME="rsslib"
fi

cd ..
tar -cvz --exclude=OLD --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd $WHERE
