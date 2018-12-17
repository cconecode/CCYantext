//
//  ViewController.m
//  Yantext
//
//  Created by 巴黎有条狗 on 2018/12/17.
//  Copyright © 2018 巴黎有条狗. All rights reserved.
//

#import "ViewController.h"
#import "CCCollectionViewLayout.h"
#import "Util.h"
// View
#import "CCCell.h"
// Model
#import "CCModel.h"

static NSString *const identifier = @"identifier";

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [CCModel textArray].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CCCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    NSString *text = [CCModel textArray][indexPath.row];
    NSLog(@"%@", text);
    [cell configData:text];
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize size = CGSizeZero;
    CCModel *model;
    if (indexPath.section==0) {
        model = self.selectedList[indexPath.row];
    }else if(indexPath.section == 1){
        model = self.unSelectedList[indexPath.row];
    }
    size = [self calculateCellSize:model.text];
    return size;
}


- (UICollectionView *)collectionView {
    if (!_collectionView) {
        CGRect frame = CGRectMake(0, kStatusBarHeight, kScreenWidth, 200);
        CCCollectionViewLayout *layout = [[CCCollectionViewLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
        [_collectionView registerClass:[CCCell class] forCellWithReuseIdentifier:identifier];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    return _collectionView;
}


@end
