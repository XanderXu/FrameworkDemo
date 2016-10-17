//
//  AudienceCellModel.h
//  AnyChatLive
//
//  Created by bairuitech on 16/7/12.
//  Copyright © 2016年 anychat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudienceCellModel : NSObject
@property(nonatomic, strong) NSNumber * account;
@property(nonatomic, strong) NSNumber * userId;
@property (assign, nonatomic) int grade;
@property(nonatomic, copy)   NSString * nickName;
@property(nonatomic, copy)   NSString * photo;
@property (assign, nonatomic) BOOL isSlient;//是否已禁言


+(instancetype)audienceCellModelWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
@end
