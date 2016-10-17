//
//  AudienceCollectionViewController.h
//  AnyChatLive
//
//  Created by Mac on 16/7/19.
//  Copyright © 2016年 anychat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudienceCellModel.h"

@protocol AudienceCollectionViewControllerDelegate <NSObject>
- (void)audienceCollectionViewController : (UICollectionViewController *)vc didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
@end
@interface AudienceCollectionViewController : UICollectionViewController
@property (strong, nonatomic) NSMutableArray *audienceImageArray;//观众头像数组
+(instancetype)audienceCollectionVC;
@property (weak, nonatomic) id<AudienceCollectionViewControllerDelegate> delegate;
@end
