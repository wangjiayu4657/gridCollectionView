//
//  WJYCollectionViewCell.h
//  gridCollectionView
//
//  Created by fangjs on 16/7/22.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const cellId = @"photo";

@interface WJYCollectionViewCell : UICollectionViewCell

/**图片名称*/
@property (copy , nonatomic) NSString *imageName;

@end
