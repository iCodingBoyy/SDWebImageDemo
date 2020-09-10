//
//  UIImageView+SDImageFlipping.h
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDWebImage.h>


NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (SDImageFlipping)
- (void)sd_setImageWithURL:(nullable NSURL *)url
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical;


- (void)sd_setImageWithURL:(nullable NSURL *)url
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                horizontal:(BOOL)horizontal
                  vertical:(BOOL)vertical
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock;
@end

NS_ASSUME_NONNULL_END
