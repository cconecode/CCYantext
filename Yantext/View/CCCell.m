//
//  CCCell.m
//  Yantext
//
//  Created by 巴黎有条狗 on 2018/12/17.
//  Copyright © 2018 巴黎有条狗. All rights reserved.
//

#import "CCCell.h"

@interface CCCell ()

@property (nonatomic, strong) UILabel* textLabel;

@end

@implementation CCCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.textLabel];
    }
    return self;
}

- (void)configData:(NSString *)text {
    self.textLabel.text = text;
}

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.textColor = [UIColor blackColor];
        _textLabel.layer.cornerRadius = 4;
        _textLabel.layer.borderColor = [UIColor blackColor].CGColor;
        _textLabel.layer.borderWidth = 0.5f;
    }
    return _textLabel;
}


@end
