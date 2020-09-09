//
//  UIImageView+SDTransformer.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDTransformer.h"



@implementation UIImageView (SDTransformer)

- (void)sd_setImageWithURL:(nullable NSURL *)url
               transformer:(id<SDImageTransformer>)transformer {
    
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer progress:nil completed:nil];
}


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
               transformer:(id<SDImageTransformer>)transformer {
    
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer progress:nil completed:nil];
}

- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
               transformer:(id<SDImageTransformer>)transformer {
    
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:nil];
}

- (void)sd_setImageWithURL:(nullable NSURL *)url
               transformer:(id<SDImageTransformer>)transformer
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
               transformer:(id<SDImageTransformer>)transformer
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
               transformer:(id<SDImageTransformer>)transformer
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:nil completed:completedBlock];
}

- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
               transformer:(id<SDImageTransformer>)transformer
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDWebImageContext *imageContext = [SDWebImageContext dictionaryWithObject:transformer forKey:SDWebImageContextImageTransformer];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options context:imageContext progress:progressBlock completed:completedBlock];
}
@end
