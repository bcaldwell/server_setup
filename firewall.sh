#!/bin/sh\

sudo ufw status verbose

sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 433

sudo ufw logging on

sudo ufw status numbered

sudo ufw enable
sudo ufw status verbose
