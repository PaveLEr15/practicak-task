#!/bin/bash

logwatch --detail 10 --mailto root --range today --service vsftpd --service sshd --format html


