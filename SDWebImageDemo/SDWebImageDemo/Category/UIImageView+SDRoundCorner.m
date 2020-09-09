//
//  UIImageView+SDRoundCorner.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDRoundCorner.h"

@implementation UIImageView (SDRoundCorner)
- (void)sd_setImageWithURL:(NSURL *)url cornerRadius:(CGFloat)cornerRadius corners:(SDRectCorner)corners borderWidth:(CGFloat)borderWidth borderColor:(nullable UIColor *)borderColor {
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    SDWebImageContext *imageContext = [SDWebImageContext dictionaryWithObject:transformer forKey:SDWebImageContextImageTransformer];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 context:imageContext progress:nil completed:nil];
}
@end
