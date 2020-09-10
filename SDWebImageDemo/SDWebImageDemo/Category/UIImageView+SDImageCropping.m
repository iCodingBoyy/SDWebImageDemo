//
//  UIImageView+SDImageCropping.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageCropping.h"
#import "UIImageView+SDTransformer.h"


@implementation UIImageView (SDImageCropping)
- (void)sd_setImageWithURL:(NSURL *)url
                      rect:(CGRect)rect {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                      rect:(CGRect)rect {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer];
}


- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                      rect:(CGRect)rect {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url
                      rect:(CGRect)rect
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                      rect:(CGRect)rect
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                      rect:(CGRect)rect
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                      rect:(CGRect)rect
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageCroppingTransformer *transformer = [SDImageCroppingTransformer transformerWithRect:rect];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
