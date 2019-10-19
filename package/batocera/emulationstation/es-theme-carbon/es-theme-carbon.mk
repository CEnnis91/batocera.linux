################################################################################
#
# EmulationStation theme "Carbon"
#
################################################################################
# Version.: Commits on Oct 18, 2019
ES_THEME_CARBON_VERSION = de8c7124cbb9de431888382cb696edceef09617b
ES_THEME_CARBON_SITE = $(call github,CEnnis91,es-theme-carbon,$(ES_THEME_CARBON_VERSION))

define ES_THEME_CARBON_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-carbon
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-carbon
endef

$(eval $(generic-package))
