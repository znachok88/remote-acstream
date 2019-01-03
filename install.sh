#!/bin/bash

#скачиваем архив
git clone https:// /opt1


#розпаковка архива

unzip /opt1/linux-arm_all.zip 

#remotefork утановка

cp /opt/remotefork/remotefork.service /etc/systemd/system
chmod +x /opt/remotefork/RemoteForkCP
systemctl enable remotefork.service


#acestream установка

cp /opt/acestream/acestream.service /etc/systemd/system
chmod +x /opt/acestream/acestream.start
chmod +x /opt/acestream/acestream.stop
systemctl enable acestream.service
systemctl start acestream.service

#reboot
reboot