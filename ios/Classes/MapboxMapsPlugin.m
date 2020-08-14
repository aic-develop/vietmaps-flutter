#import "MapboxMapsPlugin.h"

#if __has_include(<mapbox_gl/mapbox_gl-Swift.h>)
#import <mapbox_gl/mapbox_gl-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mapbox_gl-Swift.h"
#endif

@implementation MapboxMapsPlugin 
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMapboxGlFlutterPlugin registerWithRegistrar:registrar];
}
@end
