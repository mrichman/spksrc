#!/bin/sh

# Package
PACKAGE="id3pkg"
DNAME="id3pkg"

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
    ln -s ${INSTALL_DIR}/bin/id3 /usr/local/bin/id3

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
    rm -f /usr/local/bin/id3

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
