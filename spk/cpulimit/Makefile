SPK_NAME = cpulimit
SPK_VERS = 0.2
SPK_REV = 0
SPK_ICON = src/cpulimit.png

DEPENDS = cross/$(SPK_NAME)

MAINTAINER = SynoCommunity
DESCRIPTION = cpulimit is a simple program which attempts to limit the cpu usage of a process expressed in percentage, not in cpu time. 
RELOAD_UI = no
DISPLAY_NAME = cpulimit
STARTABLE = no
CHANGELOG = ""

HOMEPAGE   = https://github.com/opsengine/cpulimit
LICENSE    = GPL/GPLv2

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

include ../../mk/spksrc.spk.mk
