### init
```shell
cd /tmp
yum install -y git mysql-server
echo '[mysqld]
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock
user=mysql
symbolic-links=0
character-set-server=utf8
[mysqld_safe]
log-error=/var/log/mysqld.log
pid-file=/var/run/mysqld/mysqld.pid
'> /etc/my.cnf
service restart mysqld
```

### app note
```shell
cd /tmp
mysql <<EOF
create database g_note;
EOF
git clone https://github.com/shinhwagk/gkbase-beta-data
mysql -Dg_note </tmp/gkbase-beta-data/g_note.bak.sql 
```
