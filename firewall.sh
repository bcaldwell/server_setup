#!/bin/sh\

sudo ufw enable

sudo ufw status verbose

sudo ufw allow 22 ssh
sudo ufw allow 80 http
sudo ufw allow 433 https

sudo ufw logging on

sudo ufw status numbered