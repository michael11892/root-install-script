#Installing Required Packages
sudo yum install git cmake gcc-c++ gcc binutils \
libX11-devel libXpm-devel libXft-devel libXext-devel

#Installing Optional Packages
sudo yum install gcc-gfortran openssl-devel pcre-devel \
mesa-libGL-devel mesa-libGLU-devel glew-devel ftgl-devel mysql-devel \
fftw-devel cfitsio-devel graphviz-devel \
avahi-compat-libdns_sd-devel libldap-dev python-devel \
libxml2-devel gsl-static

#Building & Configuration
cd /usr/local/

sudo git httpa://github.com/root-mirror/root.git

sudo chown -R $USER root

cd root && mkdir obj && cd obj && cmake .. && make -j 4

source bin/thisroot.sh

cd 

echo "#Include PATH For CERN ROOT" >> .bashrc
echo "export ROOTSYS=/usr/local/root/obj" >> .bashrc
echo "export PATH=$ROOTSYS/bin:$PATH" >> .bashrc
echo "export LD_LIBRARY_PATH=$ROOTSYS/lib:$PYTHONDIR/lib:$LD_LIBRARY_PATH" >> .bashrc
echo "export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH" >> .bashrc
