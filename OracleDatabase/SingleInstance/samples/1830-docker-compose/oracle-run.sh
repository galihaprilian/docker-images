docker run --name myorclxe \
    --memory="2g" \
    -d \
    -p 1521:1521 \
    -p 5500:5500 \
    -e ORACLE_PWD=solusi \
    -e ORACLE_CHARACTERSET=AL32UTF8 \
    bistech/orclxe18c:latest

docker run -it --name myorclxe \
    --memory="2g" \
    -p 1521:1521 \
    -p 5500:5500 \
    -e ORACLE_PWD=solusi \
    -e ORACLE_CHARACTERSET=AL32UTF8 \
    bistech/orclxe18c:latest \
    /bin/bash

docker exec -it --user=oracle myorclxe bash
. oraenv
sqlplus sys@XEPDB1 as sysdba

docker exec -it --user=oracle myorclxe /etc/init.d/oracle-xe-18c configure
