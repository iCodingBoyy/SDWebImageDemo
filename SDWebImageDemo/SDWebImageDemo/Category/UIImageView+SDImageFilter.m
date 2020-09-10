//
//  UIImageView+SDImageFilter.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageFilter.h"
#import "UIImageView+SDTransformer.h"


@implementation UIImageView (SDImageFilter)
- (void)sd_setImageWithURL:(NSURL *)url
                    filter:(CIFilter *)filter {
    
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:nil];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                    filter:(CIFilter *)filter {
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:nil];
}


- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                    filter:(CIFilter *)filter {
    
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:nil];
}

- (void)sd_setImageWithURL:(NSURL *)url
                    filter:(CIFilter *)filter
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                    filter:(CIFilter *)filter
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                    filter:(CIFilter *)filter
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                    filter:(CIFilter *)filter
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageFilterTransformer *transformer = [SDImageFilterTransformer transformerWithFilter:filter];
    [self sd_setImageWithURL:url
            placeholderImage:placeholder
                     options:options
                 transformer:transformer
                    progress:progressBlock
                   completed:completedBlock];
}
@end
