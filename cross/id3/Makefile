PKG_NAME = id3
PKG_EXT = tar.gz
PKG_DOWNLOAD_METHOD = git
PKG_GIT_HASH = 9c59dc4b44d116a56b9028ff2a5afa281f0bb20c
PKG_DIST_FILE = $(PKG_NAME)-git$(PKG_GIT_HASH).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/squell/id3.git
PKG_DIR = $(PKG_NAME)-git$(PKG_GIT_HASH)


HOMEPAGE = https://github.com/squell/id3
COMMENT  = a portable command-line mass tagger

LICENSE  = https://github.com/squell/id3/blob/master/COPYING

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
	cp $(WORK_DIR)/$(PKG_DIR)/id3 $(STAGING_INSTALL_PREFIX)/bin/id3
