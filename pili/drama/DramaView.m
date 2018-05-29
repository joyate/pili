//
//  DramaView.m
//  pili
//
//  Created by ejoy on 2018/5/28.
//  Copyright © 2018年 ejoy. All rights reserved.
//

#import "DramaView.h"
#import "Common.h"

NSString* DRAMA_CELL_NAME_ID = @"drama_cell_id";
NSString* DRAMA_HEADER_ID = @"drama_header_id";

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
    
    CGRect scr_rec = [UIScreen mainScreen].bounds;
    CGFloat margins = ((int)scr_rec.size.width % 120 - 3)/((int)scr_rec.size.width / 120 + 1);
    
    NSLog(@"%@,%f",NSStringFromCGSize(scr_rec.size),margins);
    
    // 设置layout
    UICollectionViewFlowLayout* layout = [UICollectionViewFlowLayout new];
    layout.itemSize = CGSizeMake(120, 180);
    layout.minimumLineSpacing = 20;
    layout.minimumInteritemSpacing = margins;
    layout.headerReferenceSize = CGSizeMake(scr_rec.size.width, 50);
    //layout.footerReferenceSize = CGSizeMake(scr_rec.size.width, 20);
    
    layout.sectionInset = UIEdgeInsetsMake(5, margins,5,margins);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    // 设置UICollectionView
    UICollectionView* cv_drama = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
    cv_drama.backgroundColor = [UIColor whiteColor];
    cv_drama.dataSource = (UIViewController<UICollectionViewDataSource>*)self.parentViewControl;
    cv_drama.showsVerticalScrollIndicator = NO;
    
    [cv_drama registerNib:[UINib nibWithNibName:@"CVCellDrama" bundle:nil] forCellWithReuseIdentifier:DRAMA_CELL_NAME_ID];
    
    [cv_drama registerNib:[UINib nibWithNibName:@"DramaHeaderView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:DRAMA_HEADER_ID];
    
    [self addSubview:cv_drama];
    
}




@end
