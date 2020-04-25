PKG_NAME = monkeysaudio
PKG_EXT = tar.gz
PKG_DOWNLOAD_METHOD = git
PKG_GIT_HASH = bac9b6bb4714a6de85a990a6916d1abc4c171271
PKG_DIST_FILE = $(PKG_NAME)-git$(PKG_GIT_HASH).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/fernandotcl/monkeys-audio.git
PKG_DIR = $(PKG_NAME)-git$(PKG_GIT_HASH)

COMMENT  = This is a port of Monkey's Audio Codec to Unix-like systems

LICENSE  = https://github.com/fernandotcl/monkeys-audio/blob/master/LICENSE

CONFIGURE_TARGET = mac_configure

POST_INSTALL_TARGET = mac_post

include ../../mk/spksrc.cross-cc.mk

.PHONY: mac_configure
mac_configure:
	$(RUN) cmake .

.PHONY: mac_post
mac_post:
	$(RUN) mkdir -p $(WORK_DIR)/install/var/packages/$(PKG_NAME)/target/bin
	$(RUN) cp $(WORK_DIR)/$(PKG_DIR)/mac $(WORK_DIR)/install/var/packages/$(PKG_NAME)/target/bin

