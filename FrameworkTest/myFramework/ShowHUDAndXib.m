

#import "ShowHUDAndXib.h"
#import <myFramework/AnchorShowEndView.h>
#import <myFramework/BRBundleTool.h>
#import <myFramework/AudienceCellModel.h>
#import <myFramework/AudienceCollectionViewCell.h>
#import <myFramework/AudienceCollectionViewController.h>
@interface ShowHUDAndXib()
@property (strong, nonatomic) AudienceCollectionViewController *audienceVC;
@end
@implementation ShowHUDAndXib

-(void)loadNibOnView:(UIView *)view {
    //结束直播
//    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"myFramework.framework/Headers/resource" withExtension:@"bundle"]];
//        NSLog(@"NSBundle--%@",bundle);
//    [bundle load];
    //[BRBundleTool getBundle]
//    AnchorShowEndView *anchorShowEndView = [[BRBundleTool getBundle] loadNibNamed:@"AnchorShowEndView" owner:nil options:nil].lastObject;
//    AnchorShowEndView *anchorShowEndView = [bundle loadNibNamed:@"AnchorShowEndView" owner:self options:nil].lastObject;
    AnchorShowEndView *anchorShowEndView = [[NSBundle mainBundle] loadNibNamed:@"myFramework.framework/AnchorShowEndView" owner:nil options:nil].lastObject;
    
    
    [view addSubview:anchorShowEndView];
    
    anchorShowEndView.frame = view.frame;
}


-(void)showHUDOnView:(UIView *)view {
    UIView *HUDView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 250)];
    [view addSubview:HUDView];
    HUDView.center = CGPointMake(view.bounds.size.width * 0.5, view.bounds.size.height *0.5);
    HUDView.backgroundColor = [UIColor whiteColor];
    
    
    
    NSString *path = [[NSBundle bundleForClass:self.class] pathForResource:@"myFramework.framework/Headers/resource.bundle/QQ20161009-0.png" ofType:nil];
    NSLog(@"%@",path);
    UIImage *image = [UIImage imageNamed:@"resource.bundle/QQ20161009-0.png"];
    if (path) {
        image = [UIImage imageWithContentsOfFile:path];
    }
    NSLog(@"%@",image);
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [HUDView addSubview:imageView];
    imageView.frame = CGRectMake(0, 0, HUDView.bounds.size.width, HUDView.bounds.size.height);
    imageView.center = CGPointMake(HUDView.bounds.size.width * 0.5, HUDView.bounds.size.height * 0.5);
    
}
-(void)loadTableViewOnView:(UIView *)view {
    AudienceCollectionViewController *audienceCollectionVC = [AudienceCollectionViewController audienceCollectionVC];
    self.audienceVC = audienceCollectionVC;
    audienceCollectionVC.audienceImageArray = [NSMutableArray array];
    [view addSubview:audienceCollectionVC.collectionView];
}
@end
