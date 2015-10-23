# libCanOpenURL

After iOS 9, `canOpenURL:` method always return `NO` if not declared on application Info.plist.
libCanOpenURL call `canOpenURL:` via SpringBoard process to bypass this restriction.

## Weak library link.

If your tweak support iOS 8 and early, weak library link is usefull.

    XXX_LDFLAGS += -weak_library $(THEOS)/lib/libcanopenurl.dylib

## Acknowledgment

All of the implementation design copied from [AppList](https://github.com/rpetrich/AppList) by rpetrich.
