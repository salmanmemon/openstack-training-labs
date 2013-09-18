#!/bin/sh
#
# About:Setup Dependences for Virtual Box Sandbox
#       meant for OpenStack Labs.
#
# Contact: pranav@aptira.com
# License: Apache Software License (ASL) 2.0 

###################################################
# This Script will download the required packages #
# using apt-get --download-only option.           #
#                                                 #
# This script will install and get your VM ready  #
# for OpenStack.                                  #
###################################################

# Assumptions : It is assumed that internet is
# switched on/VM has internet connection. 
# Internet is required for this script to run.

# Add a Few required packages
apt-get install -y ubuntu-cloud-keyring python-software-properties software-properties-common python-keyring
# Update apt-get
apt-get -y update 

# Add OpenStack Grizzly Repo.
echo deb http://ubuntu-cloud.archive.canonical.com/ubuntu precise-updates/grizzly main >> /etc/apt/sources.list.d/grizzly.list

# Update apt-get, Upgrade Installed Packages and Kernel Upgrade
apt-get -y --download-only update
apt-get -y --download-only upgrade
apt-get -y --download-only dist-upgrade
apt-get install -y --download-only ubuntu-cloud-keyring python-software-properties software-properties-common python-keyring

# Configure the Network Interfaces by using the templates in the networking
# part of this folder.

# TO BE ADDED LATER ON.

#service networking restart

# Get (apt-get) all the packages and download them but not install them using
# the --download-only option.
# Advantage/Use/Need of --download-only in this particular case is due to the
# weird use-case of teaching OpenStack by deploying OpenStack in a local/remote
# location (College,Uni,Office,Conferences etc.) and the practise of keeping
# all the packages downloaded but-not-installed eliminates the need for
# internet while deploying openstack.

single_node() {
    #Install All package on the given Virtual Machine ...
    apt-get install -y --download-only mysql-server python-mysqldb rabbitmq-server ntp vlan bridge-utils
     keystone glance openvswitch-switch openvswitch-datapath-dkms quantum-server quantum-plugin-openvswitch quantum-plugin-openvswitch-agent dnsmasq quantum-dhcp-agent quantum-l3-agent
      cpu-checker kvm libvirt-bin pm-utils nova-api nova-cert novnc nova-consoleauth nova-scheduler nova-novncproxy nova-doc nova-conductor nova-compute-kvm
       cinder-api cinder-scheduler cinder-volume iscsitarget open-iscsi iscsitarget-dkms
        openstack-dashboard memcached
}

multi_node(){
    # Install packages as per the node defination ...

    # TO BE DONE.

    ## Also need to figure out whether to download all the packages even
    ## if they are not playing any role in the given node to keep the scripts simpler
}

if [ "$1" == "single-node" ]; then
    single_node
else
    if [ "$1" == "multi-node" ]; then
        multi_node
    else
        echo "invalid option ... cannot proceede"
    fi
fi

echo -e "Your VM is ready for OpenStack Installation ... \n you dont need internet from now on"
