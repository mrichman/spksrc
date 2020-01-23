#!/bin/sh

# Package
PACKAGE="shntool"
DNAME="shntool"

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
    
    # Put shntool in the PATH
    mkdir -p /usr/local/bin
   
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shntool
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shncat
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shncmp
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnconv
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shncue
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnfix
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shngen
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnhash
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shninfo
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnjoin
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnlen
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnpad
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnsplit
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shnstrip
    ln -s ${INSTALL_DIR}/bin/shntool /usr/local/bin/shntrim

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
    rm -f /usr/local/bin/shntool
    rm -f /usr/local/bin/shncat
    rm -f /usr/local/bin/shncmp
    rm -f /usr/local/bin/shnconv	
    rm -f /usr/local/bin/shncue	
    rm -f /usr/local/bin/shnfix	
    rm -f /usr/local/bin/shngen	
    rm -f /usr/local/bin/shnhash	
    rm -f /usr/local/bin/shninfo	
    rm -f /usr/local/bin/shnjoin	
    rm -f /usr/local/bin/shnlen	
    rm -f /usr/local/bin/shnpad	
    rm -f /usr/local/bin/shnsplit	
    rm -f /usr/local/bin/shnstrip	
    rm -f /usr/local/bin/shntrim

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
