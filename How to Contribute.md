How to contribute
=================


Testing
-------


1. Test Scripts Individually.
  Run the Scripts inside the Scripts Folder to check whether the shell scripts are properly functioning.
  You Dont Need to install Vitual Box although it is adviced to do so, as there is a good chance that you may end up breaking your host machine.
  
  * How to Test them??
    
    Testing these scripts is as simple as running them. Although some of the scripts need the required Input parameters.
    
  **Note:** No Need for Virutalbox Guest Addons for testing the scripts as units.

2. Test Entire System
  You need to install Virtual Box, install Ubuntu Server 12.04 or 13.04. After installation you also need to install Virtual Box Guest Addons.
  To install Virtual Box guest addons you need do the following :

  Either use the Virtual Box Guest Addons Installation via. ISO,
    ```
      #mount /dev/cdrom0/ /tmp/cdrom
      #cd /tmp/cdrom/
      #./virtualbox 
    ```
  Or You May use Ubuntu Repositories for the same
  
    ```
      #apt-get --no-install-recommends install virtualbox-guest-additions
    ```
