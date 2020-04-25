#!/bin/sh

# Package
PACKAGE="libiconv"
DNAME="libiconv"

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
    
    # Put libiconv in the PATH
    mkdir -p /usr/local/bin
    ln -s ${INSTALL_DIR}/bin/iconv /usr/local/bin/iconv
    ln -s ${INSTALL_DIR}/lib/libcharset.so.1.0.0 /usr/local/lib/libcharset.so.1.0.0
    ln -s ${INSTALL_DIR}/lib/libcharset.so.1.0.0 /usr/local/lib/libcharset.so.1
    ln -s ${INSTALL_DIR}/lib/libcharset.so.1.0.0 /usr/local/lib/libcharset.so
    ln -s ${INSTALL_DIR}/lib/libiconv.so.2.6.0 /usr/local/lib/libiconv.so.2.6.0
    ln -s ${INSTALL_DIR}/lib/libiconv.so.2.6.0 /usr/local/lib/libiconv.so.2
    ln -s ${INSTALL_DIR}/lib/libiconv.so.2.6.0 /usr/local/lib/libiconv.so
    ln -s ${INSTALL_DIR}/lib/preloadable_libiconv.so /usr/local/lib/preloadable_libiconv.so
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
    rm -f /usr/local/bin/iconv
    rm -f /usr/local/lib/libcharset.so.1.0.0
    rm -f /usr/local/lib/libcharset.so.1
    rm -f /usr/local/lib/libcharset.so
    rm -f /usr/local/lib/libiconv.so.2.6.0
    rm -f /usr/local/lib/libiconv.so.2
    rm -f /usr/local/lib/libiconv.so
    rm -f /usr/local/lib/preloadable_libiconv.so
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
