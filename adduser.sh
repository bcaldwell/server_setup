#!/bin/sh\

adduser admin
id admin
ls -lad /home/admin/
passwd admin
echo 'admin ALL=(ALL) ALL' >> /etc/sudoers
