//
//  WJYCollectionViewCell.m
//  gridCollectionView
//
//  Created by fangjs on 16/7/22.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "WJYCollectionViewCell.h"



@interface WJYCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation WJYCollectionViewCell

- (void)awakeFromNib {
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderWidth = 5.0f;
}


-(void)setImageName:(NSString *)imageName {
    _imageName = [imageName copy];
    
    NSLog(@"%@",imageName);
    
    self.imageView.image = [UIImage imageNamed:imageName];
}

@end
