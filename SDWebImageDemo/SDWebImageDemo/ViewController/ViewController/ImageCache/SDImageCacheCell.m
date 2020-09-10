//
//  SDImageCacheCell.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/10.
//  Copyright © 2020 myz. All rights reserved.
//

#import "SDImageCacheCell.h"
#import <QMUIKit/QMUIKit.h>
#import <Masonry/Masonry.h>

@implementation SDImageCacheCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self setUp];
}

- (void)setUp {
    _titleLabel = [[UILabel alloc]init];
    _titleLabel.textColor = [UIColor qmui_colorWithHexString:@"#FF4275"];
    _titleLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
    [self.contentView addSubview:_titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.height.equalTo(@(24));
    }];
    
    UIView *container = [[UIView alloc]init];
    [self.contentView addSubview:container];
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(20);
        make.right.equalTo(self.contentView).offset(-20);
        make.bottom.equalTo(self.contentView).offset(-10);
        make.top.equalTo(self.titleLabel.mas_bottom).offset(10);
    }];
    
    _coverImageView = [[UIImageView alloc]init];
    _coverImageView.contentMode = UIViewContentModeScaleAspectFit;
    [container addSubview:_coverImageView];
    [self.coverImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_greaterThanOrEqualTo(container);
        make.right.mas_lessThanOrEqualTo(container);
        make.bottom.mas_lessThanOrEqualTo(container);
        make.top.mas_greaterThanOrEqualTo(container);
        make.centerX.equalTo(container);
        make.centerY.equalTo(container);
    }];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
