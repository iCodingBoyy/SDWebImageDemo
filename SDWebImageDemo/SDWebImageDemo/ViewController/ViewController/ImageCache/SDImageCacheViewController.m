//
//  SDImageCacheViewController.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/10.
//  Copyright © 2020 myz. All rights reserved.
//

#import "SDImageCacheViewController.h"
#import <Masonry/Masonry.h>
#import <SDWebImage/SDWebImage.h>
#import "SDImageCacheCell.h"
#import "UIImageView+SDTransformer.h"

@interface SDImageCacheViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *listArray;
@end

@implementation SDImageCacheViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    self.titleView.title = @"SDWebImage";
    [self makeConstraints];
    [self makeDataSource];
}

- (void)makeDataSource {
    NSString *imageURL = @"https://skinsecret.clife.cn/03f379959c80466e8fec781d1d6a4264.jpg";
    NSMutableArray *tmpArray = [[NSMutableArray alloc]init];
    {
        [tmpArray addObject:@{@"title":@"原图",@"imageURL":imageURL, @"transformer":[NSNull null]}];
    }
    {
        SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:1000 corners:UIRectCornerAllCorners borderWidth:5.0 borderColor:[UIColor qmui_colorWithHexString:@"#FF4275"]];
        [tmpArray addObject:@{@"title":@"RoundCorner(All,borderWidth:5.0,borderColor:#FF4275)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:CGSizeMake(100, 44) scaleMode:SDImageScaleModeAspectFit];
        [tmpArray addObject:@{@"title":@"Resizing Size(100, 44)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:CGRectMake(540, 0, 585, 492)];
        [tmpArray addObject:@{@"title":@"Cropping Rect(540, 0, 585, 492)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:YES vertical:YES];
        [tmpArray addObject:@{@"title":@"Flipping(H:YES,V:YES)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:130 fitSize:YES];
        [tmpArray addObject:@{@"title":@"Rotation(Angle:130,fitSize:YES)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:[UIColor qmui_colorWithHexString:@"#FF4275"]];
        [tmpArray addObject:@{@"title":@"TintColor(color:#FF4275)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:10];
        [tmpArray addObject:@{@"title":@"Blur(blurRadius:10)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    {
        //创建CIFilter CIMinimumComponent黑白 CIPhotoEffectFade相册
        CIFilter *filter = [CIFilter filterWithName:@"CIMinimumComponent"];
        SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
        [tmpArray addObject:@{@"title":@"Filter(CIMinimumComponent)",@"imageURL":imageURL, @"transformer":transformer}];
    }
    
    {
        SDImageCroppingTransformer *transformer1 = [SDImageCroppingTransformer transformerWithRect:CGRectMake(540, 0, 585, 492)];
        
        //创建CIFilter CIMinimumComponent黑白 CIPhotoEffectFade相册
        CIFilter *filter = [CIFilter filterWithName:@"CIPhotoEffectFade"];
        SDImageFilterTransformer *transformer2 = [SDImageFilterTransformer transformerWithFilter:filter];
        
        SDImageRoundCornerTransformer *transformer3 = [SDImageRoundCornerTransformer transformerWithRadius:1000 corners:UIRectCornerAllCorners borderWidth:5.0 borderColor:[UIColor qmui_colorWithHexString:@"#FF4275"]];
        
        SDImageFlippingTransformer *transformer4 = [SDImageFlippingTransformer transformerWithHorizontal:YES vertical:NO];
        
        SDImageBlurTransformer *transformer5 = [SDImageBlurTransformer transformerWithRadius:3];
        NSArray *transformers = @[transformer1,transformer2,transformer3,transformer4,transformer5];
        SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
        [tmpArray addObject:@{@"title":@"Pipeline",@"imageURL":imageURL, @"transformer":transformer}];
    }
    self.listArray = [[NSArray alloc]initWithArray:tmpArray];
}

#pragma mark - constraints

- (void)makeConstraints {
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuide);
        make.left.right.bottom.equalTo(self.view);
    }];
}

#pragma mark - UITableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 240;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SDImageCacheCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.row < self.listArray.count) {
        NSDictionary *param = self.listArray[indexPath.row];
        cell.titleLabel.text = param[@"title"];
        NSURL *url = [NSURL URLWithString:param[@"imageURL"]];
        id transformer = param[@"transformer"];
        transformer = (transformer == [NSNull null] ? nil : transformer);
        [cell.coverImageView sd_setImageWithURL:url transformer:transformer];
    }
    return cell;
}

#pragma mark - Getter

- (UITableView *)tableView
{
    if (_tableView) {
        return _tableView;
    }
    _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.estimatedRowHeight = 0;
    _tableView.estimatedSectionFooterHeight = 0;
    _tableView.estimatedSectionHeaderHeight = 0;
    _tableView.scrollsToTop = YES;
//    _tableView.qmui_invalidateIndexPathHeightCachedAutomatically = YES;
    if (@available(iOS 11.0, *)) {
        _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    [_tableView registerClass:[SDImageCacheCell class] forCellReuseIdentifier:@"Cell"];
    return _tableView;
}
@end
