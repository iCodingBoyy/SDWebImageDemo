//
//  UIImageView+SDImageResizing.h
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDWebImage.h>


NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (SDImageResizing)

- (void)sd_setImageWithURL:(nullable NSURL *)url
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode;


- (void)sd_setImageWithURL:(nullable NSURL *)url
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                      size:(CGSize)size
                 scaleMode:(SDImageScaleMode)scaleMode
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock;
@end

NS_ASSUME_NONNULL_END
