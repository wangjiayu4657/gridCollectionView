//
//  ViewController.m
//  gridCollectionView
//
//  Created by fangjs on 16/7/22.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "ViewController.h"
#import "WJYCollectionViewCell.h"
#import "WJYGridCollectionViewLayout.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    WJYGridCollectionViewLayout *layouts = [[WJYGridCollectionViewLayout alloc] init];
    
    UICollectionView *myCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layouts];
    
    myCollectionView.backgroundColor = [UIColor redColor];

    myCollectionView.dataSource = self;
    
    myCollectionView.delegate = self;
    
    [self.view addSubview:myCollectionView];
    
    [myCollectionView registerNib:[UINib nibWithNibName:NSStringFromClass([WJYCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:cellId];

   
}


- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    WJYCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    
    cell.imageName = [NSString stringWithFormat:@"%zd",indexPath.item + 1];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
