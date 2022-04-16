include vendor/pxosp/config/BoardConfigKernel.mk
include vendor/pxosp/config/BoardConfigSoong.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/pxosp/config/BoardConfigQcom.mk
endif
