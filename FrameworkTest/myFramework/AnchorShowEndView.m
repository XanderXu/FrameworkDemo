//
//  AnchorShowEndView.m

//
//  Created by Mac on 16/8/24.
//  Copyright © 2016年 . All rights reserved.
//

#import "AnchorShowEndView.h"

@implementation AnchorShowEndView

-(void)awakeFromNib {
    [super awakeFromNib];
    self.contentView.layer.cornerRadius = 10.0;
    self.contentView.layer.masksToBounds = YES;
    
    self.anchorImageView.layer.cornerRadius = 30;
    self.anchorImageView.layer.masksToBounds = YES;
    self.anchorImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.anchorImageView.layer.borderWidth = 1.0;
}
- (IBAction)returnButtonClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(anchorShowEndView:didClickReturnButton:)]) {
        [self.delegate anchorShowEndView:self didClickReturnButton:sender];
    }
}
- (IBAction)jumpToMeVCButtonClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(anchorShowEndView:didClickJumpToMeVCButton:)]) {
        [self.delegate anchorShowEndView:self didClickJumpToMeVCButton:sender];
    }
}

@end
