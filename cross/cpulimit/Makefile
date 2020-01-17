PKG_NAME = cpulimit
PKG_EXT = tar.gz
PKG_DOWNLOAD_METHOD = git
PKG_GIT_HASH = f4d2682804931e7aea02a869137344bb5452a3cd
PKG_DIST_FILE = $(PKG_NAME)-git$(PKG_GIT_HASH).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/opsengine/cpulimit.git
PKG_DIR = $(PKG_NAME)-git$(PKG_GIT_HASH)

HOMEPAGE = https://github.com/opsengine/cpulimit/
COMMENT  = cpulimit is a simple program which attempts to limit the cpu usage of a process (expressed in percentage, not in cpu time). 

LICENSE  = GPLv2

CONFIGURE_TARGET = myConfigure

INSTALL_TARGET = myInstall

POST_INSTALL_TARGET = myPostInstall

include ../../mk/spksrc.cross-cc.mk

.PHONY: myConfigure
myConfigure: ;

.PHONY: myInstall
myInstall: ;
	

.PHONY: myPostInstall
myPostInstall:
	mkdir -p $(STAGING_INSTALL_PREFIX)/bin
	cp $(WORK_DIR)/$(PKG_DIR)/src/cpulimit $(STAGING_INSTALL_PREFIX)/bin/cpulimit
