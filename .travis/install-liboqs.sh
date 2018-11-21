#!/bin/bash

# test script to install liboqs for openssh/travis build test

export LIBOQS_CODE=/tmp/liboqs
export LIBOQS_INSTALL=/tmp/liboqs-install
git clone -b master --single-branch https://github.com/open-quantum-safe/liboqs.git $LIBOQS_CODE
cd $LIBOQS_CODE
autoreconf -i
./configure --prefix=$LIBOQS_INSTALL/oqs --with-pic=yes --enable-shared=no --enable-openssl --with-openssl-dir=/usr
make -j
make install
