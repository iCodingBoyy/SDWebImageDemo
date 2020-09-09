//
//  UIImageView+SDImageFlipping.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageFlipping.h"
#import "UIImageView+SDTransformer.h"

@implementation UIImageView (SDImageFlipping)
- (void)sd_setImageWithURL:(NSURL *)url horizontal:(BOOL)horizontal vertical:(BOOL)vertical {
    SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:horizontal vertical:vertical];
    [self sd_setImageWithURL:url transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder horizontal:(BOOL)horizontal vertical:(BOOL)vertical {
    SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:horizontal vertical:vertical];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer];
}


- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options horizontal:(BOOL)horizontal vertical:(BOOL)vertical {
    SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:horizontal vertical:vertical];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder horizontal:(BOOL)horizontal vertical:(BOOL)vertical completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:horizontal vertical:vertical];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer completed:completedBlock];
}


- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options horizontal:(BOOL)horizontal vertical:(BOOL)vertical completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:horizontal vertical:vertical];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options horizontal:(BOOL)horizontal vertical:(BOOL)vertical progress:(nullable SDImageLoaderProgressBlock)progressBlock completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageFlippingTransformer *transformer = [SDImageFlippingTransformer transformerWithHorizontal:horizontal vertical:vertical];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
