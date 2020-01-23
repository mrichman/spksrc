#!/bin/sh

# Package
PACKAGE="cuetools"
DNAME="cuetools"

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
    
    # Put cuetools in the PATH
    mkdir -p /usr/local/bin
    ln -s ${INSTALL_DIR}/bin/cuebreakpoints /usr/local/bin/cuebreakpoints
    ln -s ${INSTALL_DIR}/bin/cueconvert /usr/local/bin/cueconvert
    ln -s ${INSTALL_DIR}/bin/cueprint /usr/local/bin/cueprint
    ln -s ${INSTALL_DIR}/bin/cuetag.sh /usr/local/bin/cuetag


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
    rm -f /usr/local/bin/cuebreakpoints
    rm -f /usr/local/bin/cueconvert
    rm -f /usr/local/bin/cueprint
    rm -f /usr/local/bin/cuetag
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
