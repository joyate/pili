//
//  DramaViewController.m
//  pili
//
//  Created by ejoy on 2018/5/25.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import "DramaViewController.h"
#import "DramaView.h"

@interface DramaViewController ()

@end


const CGFloat kDramaHeight = 64;
const CGFloat kTabbarHegith = 40;


@implementation DramaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
    
}




- (void)setupUI {

    
    //self.view.backgroundColor = [UIColor yellowColor];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"剧集介绍" image:[[UIImage imageNamed:@"drama"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:101];
    
    
    self.navigationItem.title = @"剧集介绍";
    
    DramaView* dv = [DramaView new];
    CGRect scr_rect = [UIScreen mainScreen].bounds;
    CGRect rect = CGRectMake(0, kDramaHeight, scr_rect.size.width, scr_rect.size.height - kDramaHeight - kTabbarHegith);
    [dv initFrame:rect parentViewControl:self];
    
    [self.view addSubview:dv];
}


-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 0;
}


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return nil;
}

@end
