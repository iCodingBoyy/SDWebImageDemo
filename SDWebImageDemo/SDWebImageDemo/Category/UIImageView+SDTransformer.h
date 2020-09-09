//
//  UIImageView+SDTransformer.h
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDWebImage.h>

@interface UIImageView (SDTransformer)

- (void)sd_setImageWithURL:(nullable NSURL *)url
               transformer:(nullable id<SDImageTransformer>)transformer;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
               transformer:(nullable id<SDImageTransformer>)transformer;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
               transformer:(nullable id<SDImageTransformer>)transformer;


- (void)sd_setImageWithURL:(nullable NSURL *)url
               transformer:(nullable id<SDImageTransformer>)transformer
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
               transformer:(nullable id<SDImageTransformer>)transformer
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
               transformer:(nullable id<SDImageTransformer>)transformer
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
               transformer:(nullable id<SDImageTransformer>)transformer
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock;
@end

