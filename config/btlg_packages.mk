# Our Bootleg apps
PRODUCT_PACKAGES += \
    WallpaperPicker2 \
    MarkupGugel \
    LatinIME \
    OmniStyle \
    OmniJaws \
    ShishufiedHeaders \
    ThemePicker

ifeq ($(BOOTLEGGERS_BUILD_TYPE),Shishufied)
    PRODUCT_PACKAGES += \
        ShishuOTA
endif

PRODUCT_PACKAGES += \
    Launcher3QuickStep

# Long Screenshot
PRODUCT_PACKAGES += \
    StitchImage

# DU-Fonts
#PRODUCT_PACKAGES += \
#    CustomFonts

# Cutout control overlay
PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Call the overlays folder to build all the rest
include packages/overlays/Shishufied/shishu.mk

# Include Potato volume panels
include packages/modules/PotatoPlugins/plugins.mk

### COMMENTED WASTELAND - MOVED TEMPORALLY HERE DUE TO WIP ###
#
#
# Some Extra packages required to be built from here
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils \
#    OmniStyle \
#    OmniJaws
#
# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils
#
