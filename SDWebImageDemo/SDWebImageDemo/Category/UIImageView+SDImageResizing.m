//
//  UIImageView+SDImageResizing.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageResizing.h"
#import "UIImageView+SDTransformer.h"


@implementation UIImageView (SDImageResizing)
- (void)sd_setImageWithURL:(NSURL *)url size:(CGSize)size scaleMode:(SDImageScaleMode)scaleMode {
    SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:size scaleMode:scaleMode];
    [self sd_setImageWithURL:url transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder size:(CGSize)size scaleMode:(SDImageScaleMode)scaleMode {
    SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:size scaleMode:scaleMode];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer];
}


- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options size:(CGSize)size scaleMode:(SDImageScaleMode)scaleMode {
    SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:size scaleMode:scaleMode];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder size:(CGSize)size scaleMode:(SDImageScaleMode)scaleMode completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:size scaleMode:scaleMode];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options size:(CGSize)size scaleMode:(SDImageScaleMode)scaleMode completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:size scaleMode:scaleMode];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options size:(CGSize)size scaleMode:(SDImageScaleMode)scaleMode progress:(nullable SDImageLoaderProgressBlock)progressBlock completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageResizingTransformer *transformer = [SDImageResizingTransformer transformerWithSize:size scaleMode:scaleMode];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
