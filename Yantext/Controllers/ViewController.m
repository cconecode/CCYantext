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

@interface ViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        CGRect frame = CGRectMake(0, kStatusBarHeight, kScreenWidth, 200);
        CCCollectionViewLayout *layout = [[CCCollectionViewLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor redColor];
    }
    return _collectionView;
}


@end
