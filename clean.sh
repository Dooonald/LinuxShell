#!/usr/bin/env bash
#
# Copyright (c) 2017 Baidu.com, Inc. All Rights Reserved
#
# Author: Lv Fuqiang (lvfuqiang@baidu.com)
# Date: 2017/6/22
# Brief:
#   Do kill all python script.

set -x
set -e
set -u

pids=`ps ux | grep app.py | grep -v grep | awk -F' ' '{print $2}'`

for i in ${pids}
do
    kill -9 ${i}
done

'''
for((i=1;i<=10;i++));  
do
	kill -9 `netstat -nlp | grep :5000 | grep -v grep | awk '{print $7}' | awk -F"/" '{print $1}'`;  
done  
'''
	
