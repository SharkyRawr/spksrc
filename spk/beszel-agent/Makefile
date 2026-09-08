SPK_NAME = beszel-agent
SPK_VERS = 0.19.0
SPK_REV = 5
SPK_ICON = src/beszel.png

DEPENDS = cross/beszel-agent

MAINTAINER = not-first
DESCRIPTION = Lightweight server monitoring with historical data, docker stats, and alerts. This package provides only the agent, and requires Beszel Hub to be running elsewhere.

DISPLAY_NAME = Beszel Agent
CHANGELOG = "Update to v0.19.0. Preserve agent environment configuration during upgrades and load legacy key.pub files."

HOMEPAGE = https://beszel.dev/
LICENSE = MIT

STARTABLE = yes
SERVICE_SETUP = src/service-setup.sh
SERVICE_PORT = 45876
NO_SERVICE_SHORTCUT = y

WIZARDS_DIR = src/wizard/

include ../../mk/spksrc.spk.mk
