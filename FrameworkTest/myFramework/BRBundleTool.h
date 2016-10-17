
#import <Foundation/Foundation.h>

@interface BRBundleTool : NSObject
+ (NSString *)getBundlePath: (NSString *)bundleName;
+ (NSBundle *)getBundle;
@end
