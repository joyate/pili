//
//  DramaView.h
//  pili
//
//  Created by ejoy on 2018/5/28.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DramaView : UIView


@property(nonatomic) UIViewController* parentViewControl;

-(void) initFrame:(CGRect)frame parentViewControl:(UIViewController*)rootVC;

-(void)setupUI;

@end
