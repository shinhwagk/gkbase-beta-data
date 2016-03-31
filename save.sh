#!/bin/bash


TIME=`date +%Y%m%d%H`
cd /opt/gkbase-beta-data

mysqldump --databases g_note > g_note_$TIME.bak.sql
git pull
git add --all
git commit -m "$TIME"
echo $?
if [[ $? == 0 ]];then
  git push
  echo '1111'
  echo $? 
  echo  '1111'
  echo 'ok'
else
  echo error
fi
