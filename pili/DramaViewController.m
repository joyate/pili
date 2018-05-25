//
//  DramaViewController.m
//  pili
//
//  Created by ejoy on 2018/5/25.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import "DramaViewController.h"

@interface DramaViewController ()

@end

@implementation DramaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    /*
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"剧集1" image:[[UIImage imageNamed:@"drama"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  selectedImage:[[UIImage imageNamed:@"drama"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
     */
    
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"剧集介绍" image:[[UIImage imageNamed:@"drama"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:101];
}




@end
