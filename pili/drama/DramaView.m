//
//  DramaView.m
//  pili
//
//  Created by ejoy on 2018/5/28.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import "DramaView.h"

@implementation DramaView

@synthesize parentViewControl;


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) initFrame:(CGRect)frame parentViewControl:(UIViewController *)rootVC {
    
    if (![super initWithFrame:frame]) {
        return;
    }
    
    self.frame = frame;
    self.parentViewControl = rootVC;
    
    [self setupUI];
    
}

- (void)setupUI {
    
    UICollectionViewFlowLayout* layout = [UICollectionViewFlowLayout new];
    layout.itemSize = self.bounds.size;
    layout.minimumLineSpacing = 2;
    layout.minimumInteritemSpacing = 2;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    UICollectionView* cv_drama = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
    cv_drama.backgroundColor = [UIColor blueColor];
    cv_drama.dataSource = (UIViewController<UICollectionViewDataSource>*)self.parentViewControl;

    
    [self addSubview:cv_drama];
    
}




@end
