#!/bin/sh

# Package
PACKAGE="flac"
DNAME="flac"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"


preinst ()
{
    exit 0
}

postinst ()
{
    # Link
    ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR}
    
    # Put flac in the PATH
    mkdir -p /usr/local/bin
    ln -s ${INSTALL_DIR}/bin/flac /usr/local/bin/flac
    ln -s ${INSTALL_DIR}/bin/metaflac /usr/local/bin/metaflac
    ln -s ${INSTALL_DIR}/lib/libFLAC.so.8.3.0 /usr/lib/libFLAC.so
    ln -s ${INSTALL_DIR}/lib/libFLAC.so.8.3.0 /usr/lib/libFLAC.so.8
    ln -s ${INSTALL_DIR}/lib/libFLAC.so.8.3.0 /usr/lib/libFLAC.so.8.3.0
    ln -s ${INSTALL_DIR}/lib/libFLAC++.so.6.3.0 /usr/lib/libFLAC++.so
    ln -s ${INSTALL_DIR}/lib/libFLAC++.so.6.3.0 /usr/lib/libFLAC++.so.6
    ln -s ${INSTALL_DIR}/lib/libFLAC++.so.6.3.0 /usr/lib/libFLAC++.so.6.3.0

    exit 0
}

preuninst ()
{
    exit 0
}

postuninst ()
{
    # Remove link
    rm -f ${INSTALL_DIR}
    rm -f /usr/local/bin/flac
    rm -f /usr/local/bin/metaflac
    rm -f /usr/lib/libFLAC.so
    rm -f /usr/lib/libFLAC.so.8
    rm -f /usr/lib/libFLAC.so.8.3.0
    rm -f /usr/lib/libFLAC++.so
    rm -f /usr/lib/libFLAC++.so.6
    rm -f /usr/lib/libFLAC++.so.6.3.0

    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}
