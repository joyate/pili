//
//  ProfileViewController.m
//  pili
//
//  Created by ejoy on 2018/5/26.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //
    [self setupUI];
    
}



- (void)setupUI {
    
    
    m_info_view = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 400)];
    
    
    
    //
    [self.view addSubview:m_info_view];
    
}

@end
