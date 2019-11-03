# Init overrides for init_sony
ramdisk_init      := $(TARGET_RAMDISK_OUT)/init
ramdisk_init_real := $(TARGET_RAMDISK_OUT)/init.real

# If /init is a file and not a symlink then rename it to /init.real
# and make /init be a symlink to /sbin/init_sony (which will execute
# /init.real, if appropriate.
$(ramdisk_init_real): \
	$(ramdisk_init) \
	$(TARGET_RECOVERY_ROOT_OUT)/sbin/toybox_static \
	$(PRODUCT_OUT)/utilities/keycheck \
	$(PRODUCT_OUT)/utilities/init_sony
	cp $(TARGET_RECOVERY_ROOT_OUT)/sbin/toybox_static $(TARGET_RAMDISK_OUT)/sbin/toybox_init
	cp $(PRODUCT_OUT)/utilities/keycheck $(TARGET_RAMDISK_OUT)/sbin/keycheck
	cp $(PRODUCT_OUT)/utilities/init_sony $(TARGET_RAMDISK_OUT)/sbin/init_sony
	if [ ! -L $(ramdisk_init) ]; then \
	  mv $(ramdisk_init) $(ramdisk_init_real); \
	  ln -s /sbin/init_sony $(ramdisk_init); \
	else \
	  echo "init.real: $(ramdisk_init) is already a symlink"; \
	fi

ALL_DEFAULT_INSTALLED_MODULES += $(ramdisk_init_real)
