//

//
//  Created by Mac on 16/7/19.
//  Copyright © 2016年 . All rights reserved.
//

#import "AudienceCollectionViewController.h"
#import "AudienceCollectionViewCell.h"



@interface AudienceCollectionViewController ()

@end

@implementation AudienceCollectionViewController

+(instancetype)audienceCollectionVC {
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.minimumLineSpacing = 5;
    flow.minimumInteritemSpacing = 0;
    flow.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flow.itemSize = CGSizeMake(35, 35);
    
    AudienceCollectionViewController *VC = [[AudienceCollectionViewController alloc] initWithCollectionViewLayout:flow];
    
    
    VC.audienceImageArray = [NSMutableArray array];
    VC.collectionView.backgroundColor = [UIColor clearColor];
    [VC.collectionView registerNib:[UINib nibWithNibName:@"myFramework.framework/AudienceCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"AudienceCollectionViewCell"];
    NSLog(@"++++++++++++");
    return VC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
}
-(void)setAudienceImageArray:(NSMutableArray *)audienceImageArray {
    _audienceImageArray = audienceImageArray;
    [self.collectionView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AudienceCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AudienceCollectionViewCell" forIndexPath:indexPath];
    NSLog(@"cell+++++++");
    cell.silentWordLabel.text = @"禁";
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self.delegate respondsToSelector:@selector(audienceCollectionViewController:didSelectItemAtIndexPath:)]) {
        [self.delegate audienceCollectionViewController:self didSelectItemAtIndexPath:indexPath];
    }
}
-(void)dealloc {
    NSLog(@"dealloc");
}
@end
