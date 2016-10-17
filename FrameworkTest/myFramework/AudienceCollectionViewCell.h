

#import <UIKit/UIKit.h>
#import "AudienceCellModel.h"

@interface AudienceCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *audienceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *audienceImageBackgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *silentWordBackgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *silentWordLabel;


-(void)setAudienceImageWithUrl:(NSString *)urlString;
@property (strong, nonatomic) AudienceCellModel *model;
@end
