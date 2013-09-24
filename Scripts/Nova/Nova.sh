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

Nova() {

    # 1. Install Nova Components
    apt-get install -y nova-api nova-cert novnc nova-consoleauth nova-scheduler nova-novncproxy nova-doc nova-conductor
    
    # 2. Modify Nova Configs
    mv Templates/api-paste.ini /etc/nova/api-paste.ini
    mv Templates/nova.conf /etc/nova/nova.conf
    
    # 3. Sync Database
    nova-manage db sync

    # 4. Restart Nova Services
    for i in $( ls /etc/init.d/nova-* ); do sudo service /etc/init.d/$i restart; done
    
    # 5. Check If Nova Services are running
    nova-manage service list
}
