# oai-gnodeb-310
## Building and Installing the USRP Open-Source Toolchain (UHD) on Linux
Using the following Link: (https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_\(UHD_and_GNU_Radio\)_on_Linux)[https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_\(UHD_and_GNU_Radio\)_on_Linux]
With Ubuntu 20.04 systems 
  1. Update and Install dependencies for UHD and GNU Radio.
```
sudo apt-get update
sudo apt-get -y install autoconf automake build-essential ccache cmake cpufrequtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspection gpsd gpsd-clients inetutils-tools libasound2-dev libboost-all-dev libcomedi-dev libcppunit-dev libfftw3-bin libfftw3-dev libfftw3-doc libfontconfig1-dev libgmp-dev libgps-dev libgsl-dev liblog4cpp5-dev libncurses5 libncurses5-dev libpulse-dev libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libtool libudev-dev libusb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrender-dev libzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click python3-click-plugins python3-click-threading python3-dev python3-docutils python3-gi python3-gi-cairo python3-gps python3-lxml python3-mako python3-numpy python3-numpy-dbg python3-opengl python3-pyqt5 python3-requests python3-scipy python3-setuptools python3-six python3-sphinx python3-yaml python3-zmq python3-ruamel.yaml swig wget
```
  1. Download UHD from source code: UHD is open-source, and is hosted on GitHub. You can browse the code online at the link below, which points to version 4.4.0.0, which is the the latest release at the time of this writing.
```
cd $HOME
mkdir workarea
cd workarea
git clone https://github.com/EttusResearch/uhd
cd uhd
git tag -l
git checkout v4.4.0.0 #For UHD 4.4.0.0
```
  1. Sample output for `git tag -l`
```
release_003_009_004
release_003_009_005
release_003_010_000_000
...
```
Scroll down and select  version 4.4.0.0
  1. Build and install UHD from sources
```
cd host
mkdir build
cd build
cmake ..
make
make test
sudo make install
sudo ldconfig #update the system's shared library cache. 
```
UHD with the default install prefix will install UHD under the /usr/local/lib folder. You need to run this as root due to the permissions on that folder. 

1. If all the aformentioned steps are successful then UHD should be installed and ready to use. You can quickly test this, with no USRP device attached, by running “uhd_find_devices”. You should see something similar to the following. 
```
idrbt@idrbt:~$ uhd_find_devices 
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:

idrbt@idrbt:~$  uhd_usrp_probe
 $ sudo sysctl -w net.core.wmem_max=2500000
 $ sudo sysctl -w net.core.rmem_max=2500000

``

2. USRP N300/N310/N320/N321 Getting Started Guide (Firmware installation in USRP)

Link: https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide

3. build GNU Radio from source code

Link: https://wiki.gnuradio.org/index.php?title=UbuntuInstall#Install_Dependencies



Compile and run OAI 5G-NR branch

The compilation and operation of the 5g NR branch newly released by OAI is generally the same as that of 4G, except that the compilation and operation instructions have changed, and USRP requires X310 or N310 version, and USRPN310 is used here.

The first part refers to the blog https://blog.csdn.net/BUPTOctopus/article/details/81561607

The configuration of N310 is mainly for the use of the new NR branch of OAI. 
————————————————

gNB Part
1. Basic file download

$ sudo apt-get update 
 $ sudo apt-get install subversion git Add a certificate from gitlab.eurecom.fr to your Ubuntun echo -n | openssl s_client -showcerts -connect gitlab.eurecom.fr:443 2>/dev/null | sed -ne '/ BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | sudo tee -a /etc/ssl/certs/ca-certificates.crt 
$ sudo git config --global http.sslverify false
$ sudo git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git

2. gNB
The compilation process needs to download some files over the wall. For convenience (configuring the proxy is troublesome), some codes are commented out without affecting the overall operation: 

 $ sudo vi ~/openairinterface5g/cmake_targets/tools/build_helper


Switch to NR branch:

$  cd ~/openairinterface5g
 $ sudo git checkout develop-nr 
  $ source oaienv
 $ cd cmake_targets

Compile:

$ sudo ./build_oai -I --gNB  -x --install-system-files -w USRP

