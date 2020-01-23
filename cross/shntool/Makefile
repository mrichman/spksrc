PKG_NAME = shntool
PKG_VERS = 3.0.10
PKG_EXT = zip
PKG_ARCHIVE_NAME = master
PKG_DIST_NAME = $(PKG_ARCHIVE_NAME).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/flacon/shntool/archive
PKG_DIR = shntool-master

GNU_CONFIGURE = 1
#PRE_CONFIGURE_TARGET = myPreConfigure

include ../../mk/spksrc.cross-cc.mk

.PHONY: myPreConfigure
myPreConfigure:
	$(RUN) autoreconf -i -f
