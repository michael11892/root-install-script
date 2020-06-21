# root-install-script
Installation Script for CERN's ROOT Packet

Simply execute the script as superuser and the rest should be done automatically

The script will download the .rpm for cmake (repository version is too outdated to properly build ROOT) along with all other required and optional packets necessary for the Building and Configuration of ROOT. The script will also add it to the local user's PATH to be readily executed as acommand by any terminal instance

Note: cmake installation will produce a write-protected directory with the installation manifest. If you are not interested in it, you may delete it but I left it untouched in the sript for the purposes of troubleshooting
