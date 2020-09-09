//
//  UIImageView+SDRoundCorner.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDRoundCorner.h"
#import "UIImageView+SDTransformer.h"

@implementation UIImageView (SDRoundCorner)
- (void)sd_setImageWithURL:(NSURL *)url
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:nil];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:nil];
}


- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:nil];
}

- (void)sd_setImageWithURL:(NSURL *)url
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer completed:completedBlock];
}


- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRoundCornerTransformer *transformer = [SDImageRoundCornerTransformer transformerWithRadius:cornerRadius corners:corners borderWidth:borderWidth borderColor:borderColor];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}

@end
