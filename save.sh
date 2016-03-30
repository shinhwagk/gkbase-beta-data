#!/bin/bash

TIME=`date +%Y%m%d%H%M%S`
cd /opt/gkbase-beta-data
git pull
git add --all
git commit -m "$TIME"
echo $?
if [[ $? == 0 ]];then
  git push
  echo 'adfd'
fi
