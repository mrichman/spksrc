#!/bin/sh

# Package
PACKAGE="filepkg"
DNAME="filepkg"

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
    
    # Put in the PATH
    mkdir -p /usr/local/bin
    ln -s ${INSTALL_DIR}/bin/file /usr/local/bin/file
    ln -s ${INSTALL_DIR}/lib/libmagic.so.1.0.0 /usr/lib/libmagic.so.1.0.0
    ln -s ${INSTALL_DIR}/lib/libmagic.so.1.0.0 /usr/lib/libmagic.so.1
    ln -s ${INSTALL_DIR}/lib/libmagic.so.1.0.0 /usr/lib/libmagic.so
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
    rm -f /usr/local/bin/file
    rm -f /usr/lib/libmagic.so.1.0.0
    rm -f /usr/lib/libmagic.so.1
    rm -f /usr/lib/libmagic.so
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
