//
//  AnchorShowEndView.h

//
//  Created by Mac on 16/8/24.
//  Copyright © 2016年 . All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AnchorShowEndViewDelegate<NSObject>
- (void)anchorShowEndView:(UIView *)anchorShowEndView didClickReturnButton:(UIButton *)returnButton;
- (void)anchorShowEndView:(UIView *)anchorShowEndView didClickJumpToMeVCButton:(UIButton *)JumpToMeVCButton;
@end
@interface AnchorShowEndView : UIView

@property (weak, nonatomic) id<AnchorShowEndViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *anchorImageView;
@property (weak, nonatomic) IBOutlet UILabel *audienceNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *incomeLabel;
@property (weak, nonatomic) IBOutlet UILabel *praiseLabel;
@property (weak, nonatomic) IBOutlet UILabel *liveShowTimeLabel;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@end
