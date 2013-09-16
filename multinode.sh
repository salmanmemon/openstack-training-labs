#!/bin/sh
#
# About:Setup Dependences for Virtual Box Sandbox
#       meant for OpenStack Labs.
#
# Contact: pranav@aptira.com
# License: Apache Software License (ASL) 2.0 

echo "Multi Node"

uname=root
pass=cloud
vm_id="d57da699-ff1e-4b24-b270-78093a2b25a9" 
vboxmanage guestcontrol $vm_id execute --image "/bin/ls" --username $uname --password $pass --wait-exit --wait-stdout
#vboxmanage snapshot $vm_id take "test_snapshot" --description "test snapshot -- igore :D"
