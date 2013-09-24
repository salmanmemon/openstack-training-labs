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

Neutron() {

    # 1. Install Neutron
    apt-get -y quantum-server
    
    # 2. Configure Quantum Configuration files
    mv Templates/plugins/ovs_quantum_plugin.ini /etc/quantum/plugins/openvswitch/ovs_quantum_plugin.ini
    mv Templates/api-paste.ini /etc/quantum/api-paste.ini
    mv Templates/quantum.conf /etc/quantum/quantum.conf
    
    # 3. Restart Quantum Server
    service quantum-server restart
}
