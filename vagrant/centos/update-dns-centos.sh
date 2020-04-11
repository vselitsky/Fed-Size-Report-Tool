#!/bin/bash

echo "nameserver 8.8.8.8" >> /etc/resolv.conf

service network restart
