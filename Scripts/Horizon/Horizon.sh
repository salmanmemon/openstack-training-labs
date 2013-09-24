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

Horizon() {

    # 1. Install Horizon
    apt-get -y openstack-dashboard memcached
    
    # 2. Restart Apache2 and Memcached
    service apache2 restart
    service memcached restart

    echo " You are done with OpenStack Installation "
}
