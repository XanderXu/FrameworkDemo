

#import "BRBundleTool.h"

@implementation BRBundleTool
+ (NSBundle *)getBundle {
    return [NSBundle bundleWithPath: [[NSBundle mainBundle] pathForResource:@"resource" ofType: @"bundle"]];
}
+ (NSString *)getBundlePath: (NSString *) bundleName{
    NSBundle *myBundle = [BRBundleTool getBundle];
    if (myBundle && bundleName) {
        return [[myBundle resourcePath] stringByAppendingPathComponent: bundleName];
    }
    return nil;
}
@end
