#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "welcomeVCimage" asset catalog image resource.
static NSString * const ACImageNameWelcomeVCimage AC_SWIFT_PRIVATE = @"welcomeVCimage";

#undef AC_SWIFT_PRIVATE
