#!/bin/sh
#
# About:Setup Dependences for Virtual Box Sandbox
#       meant for OpenStack Labs.
#
# Contact: pranav@aptira.com
# License: Apache Software License (ASL) 2.0

###############################################################################
#                                                                             #
# This Script will install keystone related packages and after installaion, it#
# will configure Keystone, populate the database.                             #
#                                                                             #
###############################################################################

# Note: You DoNot Need Internet for this due to the magic of --download-only
echo "Internet connection is not required for this script to run"

pre_keystone(){
    
    # 1. Database - MySQL and Python MySQL DB Connector
    apt-get install -y mysql-server python-mysqldb

    # Configure MySQL to listen to other all IP addresses
    sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/my.cnf

    # Restart MySQL service
    service mysql restart
      
    # 2. Install RabbitMQ
    apt-get install -y rabbitmq-server
    apt-get install -y ntp
    apt-get install -y vlan bridge-utils

    # Enable IP Forwarding
    sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/' /etc/sysctl.conf
    sysctl net.ipv4.ip_forward=1
}

keystone() {

    # 1. Install Keystone
    apt-get -y keystone

    # 2. Create MySQL Database

    # 3. Configure keystone scripts (copy the template file)

    # 4. 

}
