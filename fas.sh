#!/bin/bash

echo '正在获取脚本...'
wget https://gitee.com/rjhzhr/yunmian/raw/master/lyfas.sh;bash lyfas.sh

echo '#盗版屏蔽dingd.cn
127.0.0.1 www.dingd.cn
127.0.0.1 api.dingd.cn' >> /etc/hosts
echo '#盗版屏蔽dingd.cn
127.0.0.1 www.dingd.cn
127.0.0.1 api.dingd.cn' >> /etc/fas_host

rm -f /var/www/html/admin/access.php


sed -i "s#http://www.dingd.cn/#javascript:alert('破解By凌一Qq863963860');window.open('http://wpa.qq.com/msgrd?v=3\&uin=863963860\&site=qq\&menu=yes');#g" /var/www/html/admin/create_app.php > /dev/null 2>&1