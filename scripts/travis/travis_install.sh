#!/bin/bash
# This script must be run with sudo.
# for libopencv-dev-2.4
add-apt-repository -y --force-yes ppa:kubuntu-ppa/backports
# for proto2.5
add-apt-repository -y --force-yes ppa:chris-lea/protobuf
apt-get -y --force-yes update
# remove CONDA directory
rm -rf $CONDA_DIR
# invoke BVLC caffe scripts
./caffe-public/scripts/travis/travis_install.sh
