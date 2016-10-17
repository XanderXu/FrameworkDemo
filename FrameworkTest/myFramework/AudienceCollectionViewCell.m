

#import "AudienceCollectionViewCell.h"


@implementation AudienceCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.audienceImageView.layer.cornerRadius = 17.5;
    self.audienceImageView.layer.masksToBounds = YES;
}
-(void)setAudienceImageWithUrl:(NSString *)urlString{
    self.audienceImageView.image = [UIImage imageNamed:@"讲师加载"];
    if (urlString && ![urlString isKindOfClass:[NSNull class]]) {
        NSLog(@"%@",urlString);
        
        NSURL * imageUrl = [NSURL URLWithString:urlString];
        
    }
    
}
-(void)setModel:(AudienceCellModel *)model {
    _model = model;
    
    if (model.photo && ![model.photo isKindOfClass:[NSNull class]]) {

        NSURL * imageUrl = [NSURL URLWithString:model.photo];
        
    }
    if (model.isSlient) {//已禁言
        self.audienceImageBackgroundImageView.hidden = NO;
        self.silentWordBackgroundImageView.hidden = NO;
        self.silentWordLabel.hidden = NO;
    }else {
        self.audienceImageBackgroundImageView.hidden = YES;
        self.silentWordBackgroundImageView.hidden = YES;
        self.silentWordLabel.hidden = YES;
    }
    
}
@end
