//
//  BRBundleTool.h
//  tanchuang
//
//  Created by Mac on 16/10/10.
//  Copyright © 2016年 bairuitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BRBundleTool : NSObject
+ (NSString *)getBundlePath: (NSString *)bundleName;
+ (NSBundle *)getBundle;
@end
