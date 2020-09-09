//
//  UIImageView+SDImageTint.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageTint.h"
#import "UIImageView+SDTransformer.h"

@implementation UIImageView (SDImageTint)
- (void)sd_setImageWithURL:(NSURL *)url tintColor:(UIColor*)tintColor {
    SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:tintColor];
    [self sd_setImageWithURL:url transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder tintColor:(UIColor*)tintColor {
    SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:tintColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer];
}


- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options tintColor:(UIColor*)tintColor {
    SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:tintColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder tintColor:(UIColor*)tintColor completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:tintColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options tintColor:(UIColor*)tintColor completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:tintColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options tintColor:(UIColor*)tintColor progress:(nullable SDImageLoaderProgressBlock)progressBlock completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageTintTransformer *transformer = [SDImageTintTransformer transformerWithColor:tintColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
