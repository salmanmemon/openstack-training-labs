openstack-training-labs
=======================

Some Shell scripts to automate a few Virtual Box related things to ease the process of OpenStack Training Labs

Call For Contributors/Testors
------------------------
Some help on getting started refer: [How To Contribute](https://github.com/aptira/openstack-training-labs/blob/master/How%20to%20Contribute.md)


Structure of this Repository (Tree)
------------------------

        |-- configure_networks.sh --  Virtual Box Network Configuration On Host (Host-Only Networks)
        |-- configure_vm.sh -- Configures Virtual Machine Properties
        |-- How to Contribute.md
        |-- install.sh -- Install/Init Script (Brains of this **tool(?))**
        |-- LICENSE
        |-- multinode.sh -- For Multi Node Setup
        |-- README.md -- descrption about this repository
        |-- Scripts -- Various Scripts that will run inside the VM
        |   |-- Cinder -- OpenStack Cinder Related Scripts
        |   |   |-- Cinder.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- Glance -- OpenStack Glance Related Scripts
        |   |   |-- Glance.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |       |-- cirros-0.3.1-x86_64-disk.img
        |   |       |-- glance-api.conf
        |       |       |-- glance-api-paste.ini
        |   |       |-- glance-registry.conf
        |   |       `-- glance-registry-paste.ini
        |   |-- Horizon -- OpenStack Horizon Related Scripts
        |   |   |-- Horizon.sh
        |   |   `-- Templates
        |   |-- Keystone -- OpenStack Keystone Related Scripts
        |   |   |-- Keystone.sh
        |   |   |-- Scripts
        |   |   |   |-- Credentials.sh
        |   |   |   |-- keystone_basic.sh
        |   |   |   `-- keystone_endpoints_basic.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |       `-- Keystone.conf
        |   |-- Neutron -- OpenStack Neutron (Quantum) Related Files
        |   |   |-- Neutron.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- Nova -- OpenStack Nova Related Scripts
        |   |   |-- Nova.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- PostInstall -- Carries out Tasks after installing OpenStack
        |   |   |-- PostInstall.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- PreInstall -- Carries out Tasks before installing OpenStack
        |   |   |-- PreInstall.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |       |-- interfaces-compute
        |   |       |-- interfaces-control
        |   |       |-- interfaces-network
        |   |       `-- interfaces-single
        |   `-- test_scripts.sh
        `-- singlenode.sh
