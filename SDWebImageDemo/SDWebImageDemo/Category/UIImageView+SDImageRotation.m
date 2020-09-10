//
//  UIImageView+SDImageRotation.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImageRotation.h"
#import "UIImageView+SDTransformer.h"

@implementation UIImageView (SDImageRotation)
- (void)sd_setImageWithURL:(NSURL *)url angle:(CGFloat)angle fitSize:(BOOL)fitSize {
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(nullable UIImage *)placeholder angle:(CGFloat)angle fitSize:(BOOL)fitSize {
    
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer];
}


- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize {
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImageRotationTransformer *transformer = [SDImageRotationTransformer transformerWithAngle:angle fitSize:fitSize];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
