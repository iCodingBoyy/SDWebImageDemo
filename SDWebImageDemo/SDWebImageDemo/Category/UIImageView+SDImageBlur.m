//
//  UIImageView+SDImageBlur.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageBlur.h"
#import "UIImageView+SDTransformer.h"

@implementation UIImageView (SDImageBlur)
- (void)sd_setImageWithURL:(NSURL *)url blurRadius:(CGFloat)blurRadius {
    SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:blurRadius];
    [self sd_setImageWithURL:url transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder blurRadius:(CGFloat)blurRadius {
    SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:blurRadius];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer];
}


- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options blurRadius:(CGFloat)blurRadius {
    SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:blurRadius];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder blurRadius:(CGFloat)blurRadius completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:blurRadius];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer completed:completedBlock];
}


- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options blurRadius:(CGFloat)blurRadius completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:blurRadius];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder options:(SDWebImageOptions)options blurRadius:(CGFloat)blurRadius progress:(nullable SDImageLoaderProgressBlock)progressBlock completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImageBlurTransformer *transformer = [SDImageBlurTransformer transformerWithRadius:blurRadius];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
