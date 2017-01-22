PROTON_TARGET_PACKAGE := $(PRODUCT_OUT)/pxosp_$(TARGET_DEVICE)-$(CUSTOM_ROM_VERSION)-$(CUSTOM_ROM_BUILD_DATE).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(PROTON_TARGET_PACKAGE)
	$(hide) $(SHA256) $(PROTON_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(PROTON_TARGET_PACKAGE).sha256sum
	@echo "Package Complete: $(PROTON_TARGET_PACKAGE)" >&2
