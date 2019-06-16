ARCHS = armv7 arm64 arm64e
TARGET = iphone:clang::9.0
include $(THEOS)/makefiles/common.mk

# ADDITIONAL_CFLAGS = -DDEBUG

LIBRARY_NAME = libcanopenurl
libcanopenurl_FILES = LCCanOpenURL.x
libcanopenurl_FRAMEWORKS = UIKit
libcanopenurl_LDFLAGS = -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/library.mk

before-all::
	$(ECHO_NOTHING)echo " coping header to theos linclude directory..."$(ECHO_END)
	$(ECHO_NOTHING)cp -a LCCanOpenURL.h $(THEOS)/include/$(ECHO_END)

internal-all::
	$(ECHO_NOTHING)echo " coping library to theos lib directory..."$(ECHO_END)
	$(ECHO_NOTHING)cp -a .theos/obj/debug/libcanopenurl.dylib $(THEOS)/lib/$(ECHO_END)

stage::
	mkdir -p $(THEOS_STAGING_DIR)/usr/include
	$(ECHO_NOTHING)cp -a LCCanOpenURL.h $(THEOS_STAGING_DIR)/usr/include $(ECHO_END)

after-install::
	install.exec "killall -9 SpringBoard backboardd"
