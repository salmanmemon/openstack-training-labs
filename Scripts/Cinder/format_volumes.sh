#!/bin/bash
echo "Enter Location of Disk To be used for formatting"
read $disk
# Assuming /dev/sdb for now

cat <<EOF | fdisk /dev/sdb
n
p
1

t
8e
w
EOF
partprobe
