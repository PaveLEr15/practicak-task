#!/bin/bash

tar -zcvf /archive/"created on `date '+%d-%B-%Y'`.tar.gz" /home /etc/ssh/sshd_config /etc/vsftpd.conf /var/log /etc/xrdp/xrdp.ini



