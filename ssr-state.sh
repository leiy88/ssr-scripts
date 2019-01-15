#!/bin/sh
echo 当前连接数：
netstat -anp |grep 'ESTABLISHED' |grep 'python' |grep 'tcp6' |wc -l
echo -------------------------------------------------------------------------------------------
echo
echo 连接列表
netstat -anp |grep 'ESTABLISHED' |grep 'python' |grep 'tcp6'
echo -------------------------------------------------------------------------------------------
echo

echo 接入ip列表
netstat -anp |grep 'ESTABLISHED' |grep 'python' |grep 'tcp6' |awk '{print $5}' |awk -F ":" '{print $1}' |sort -u
echo -------------------------------------------------------------------------------------------
echo

