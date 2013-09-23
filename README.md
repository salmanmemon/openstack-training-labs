openstack-training-labs
=======================

Some Shell scripts to automate a few Virtual Box related things to ease the process of OpenStack Training Labs

Call For Contributors/Testors
------------------------
*Some help on getting started refer: [How To Contribute](https://github.com/aptira/openstack-training-labs/edit/master/README.md)


Structure of this Repository (Tree)
------------------------

        |-- configure_networks.sh --  Virtual Box Network Configuration On Host (Host-Only Networks)
        |-- configure_vm.sh -- Configures Virtual Machine Properties
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
        |   |-- Horizon -- OpenStack Horizon Related Scripts
        |   |   |-- Horizon.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- Keystone -- OpenStack Keystone Related Scripts
        |   |   |-- Keystone.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- Nova -- OpenStack Nova Related Scripts
        |   |   |-- Nova.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- PostInstall -- Carries out Tasks after installing OpenStack
        |   |   |-- PostInstall.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |-- PreInstall -- Carries out tasks before installing OpenStack
        |   |   |-- PreInstall.sh
        |   |   `-- Templates -- Required Configuration Files
        |   |       |-- interfaces-compute
        |   |       |-- interfaces-control
        |   |       |-- interfaces-network
        |   |       `-- interfaces-single
        |   `-- Neutron -- OpenStack Networking Related Files
        |       |-- Neutron.sh
        |       `-- Templates -- Required Configuration Files
        `-- singlenode.sh
