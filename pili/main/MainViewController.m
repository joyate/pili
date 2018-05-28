//
//  ViewController.m
//  pili
//
//  Created by ejoy on 2018/5/15.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 建立ui
    [self setupUI];
    
    
}


- (void)setupUI {
    
    UIViewController* vc_profile = [[UIStoryboard storyboardWithName:@"Profile" bundle:nil] instantiateInitialViewController];
    UIViewController* vc_hero = [[UIStoryboard storyboardWithName:@"Hero" bundle:nil] instantiateInitialViewController];
    UIViewController* vc_drama = [[UIStoryboard storyboardWithName:@"Drama" bundle:nil] instantiateInitialViewController];
    UIViewController* vc_chitchat = [[UIStoryboard storyboardWithName:@"ChitChat" bundle:nil] instantiateInitialViewController];
    
    NSArray* vcs = [NSArray arrayWithObjects:vc_drama, vc_hero, vc_chitchat, vc_profile, nil];
    
    self.viewControllers = vcs;
    self.selectedIndex = 0;
    self.tabBar.tintColor = [UIColor orangeColor];
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.tabBar.translucent = NO;
}

@end
