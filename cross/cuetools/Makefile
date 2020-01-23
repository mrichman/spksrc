PKG_NAME = cuetools
PKG_EXT = tar.gz
PKG_DOWNLOAD_METHOD = git
PKG_GIT_HASH = 365e379483ea180bcfa272d89a2524da55b1d600
PKG_DIST_FILE = $(PKG_NAME)-git$(PKG_GIT_HASH).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/svend/cuetools.git
PKG_DIR = $(PKG_NAME)-git$(PKG_GIT_HASH)


#DEPENDS = cross/ncurses

GNU_CONFIGURE = 1
PRE_CONFIGURE_TARGET = myPreConfigure
POST_INSTALL_TARGET = myPostInstall

include ../../mk/spksrc.cross-cc.mk

.PHONY: myPreConfigure
myPreConfigure:
	$(RUN) autoreconf -i -f

.PHONY: myPostInstall
myPostInstall:
	mkdir -p $(STAGING_INSTALL_PREFIX)/bin
	cp $(WORK_DIR)/$(PKG_DIR)/src/tools/cuetag.sh $(STAGING_INSTALL_PREFIX)/bin/cuetag
