# libCanOpenURL

After iOS 9, `canOpenURL:` method always returns `NO` if not declared on application Info.plist.
libCanOpenURL calls `canOpenURL:` via SpringBoard process to bypass this restriction.

## Weak library link.

If your tweak supports iOS 8 and earlier, a weak library link is useful.

    XXX_LDFLAGS += -weak_library $(THEOS)/lib/libcanopenurl.dylib

## Acknowledgment

All of the implementation design copied from [AppList](https://github.com/rpetrich/AppList) by rpetrich.
