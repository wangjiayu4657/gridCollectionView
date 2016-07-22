//
//  WJYGridCollectionViewLayout.m
//  gridCollectionView
//
//  Created by fangjs on 16/7/22.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "WJYGridCollectionViewLayout.h"


@interface WJYGridCollectionViewLayout()

/**所有的布局属性*/
@property (strong , nonatomic)  NSMutableArray *attrsArray;

@end

@implementation WJYGridCollectionViewLayout

-(NSMutableArray *)attrsArray{
    if (!_attrsArray) {
        _attrsArray = [NSMutableArray array];
    }
    return _attrsArray;
}



-(void)prepareLayout {
    [super prepareLayout];
    
    [self.attrsArray removeAllObjects];
    
    CGFloat width = self.collectionView.frame.size.width * 0.5;
    
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
 
    for (int i = 0; i < count; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        
        UICollectionViewLayoutAttributes *attrs = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        
        if (i == 0) {
            CGFloat x = 0;
            CGFloat y = 0;
            CGFloat height = width;
            attrs.frame = CGRectMake(x, y, width, height);
        }else if (i == 1) {
            CGFloat height = width * 0.5;
            CGFloat x = width;
            CGFloat y = 0;
            attrs.frame = CGRectMake(x, y, width, height);
        }else if (i == 2) {
            CGFloat x = width;
            CGFloat y = width * 0.5;
            CGFloat height = width * 0.5;
            attrs.frame = CGRectMake(x, y, width, height);
        }else if (i == 3) {
            CGFloat x = 0;
            CGFloat y = width;
            CGFloat height = width * 0.5;
            attrs.frame = CGRectMake(x, y, width, height);
        }else if (i == 4) {
            CGFloat x = 0;
            CGFloat height = width * 0.5;
            CGFloat y = width + height;
            attrs.frame = CGRectMake(x, y, width, height);
        }else if (i == 5) {
            CGFloat x = width;
            CGFloat y = width;
            CGFloat height = width ;
            attrs.frame = CGRectMake(x, y, width, height);
        }else {
            UICollectionViewLayoutAttributes *lastAttrs = self.attrsArray[i - 6];
            CGRect rect = lastAttrs.frame;
            rect.origin.y += 2 * width;
            attrs.frame = rect;
        }
        
        [self.attrsArray addObject:attrs];
    }
}


- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return self.attrsArray;
}


- (CGSize)collectionViewContentSize {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    NSInteger row = ( count + 3 - 1 ) / 3;
    NSInteger height = row * width * 0.5;
    return CGSizeMake(width, height);
}

@end
