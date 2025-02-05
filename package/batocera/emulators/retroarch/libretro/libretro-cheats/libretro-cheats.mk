################################################################################
#
# CHEATS
#
################################################################################
# Version.: Commits on Aug 23, 2019
LIBRETRO_CHEATS_VERSION = e5368bea8fbd6011f86d560f41aa76741039a9e9
LIBRETRO_CHEATS_SITE = $(call github,libretro,libretro-database,$(LIBRETRO_CHEATS_VERSION))

define LIBRETRO_CHEATS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/batocera/datainit/cheats/cht
	cp -r $(@D)/cht/* $(TARGET_DIR)/usr/share/batocera/datainit/cheats/cht
endef

$(eval $(generic-package))
