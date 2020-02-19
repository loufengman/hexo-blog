#!/bin/bash
#Author:wangyingwang@ke.com
#Time:2020-02-10 10:49:38
#Name:create.sh
#Description:This is a script.

#$1是布局类型,$2是title

#if [ $# != 2 ] then
#    echo '请输入布局类型和title'
#    exit
#fi
hexo new $1 "$2"

#hexo new draft $1

#hexo new post $1
