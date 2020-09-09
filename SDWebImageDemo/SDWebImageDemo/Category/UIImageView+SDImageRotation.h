//
//  UIImageView+SDImageRotation.h
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDWebImage.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (SDImageRotation)
- (void)sd_setImageWithURL:(nullable NSURL *)url
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
                     angle:(CGFloat)angle
                   fitSize:(BOOL)fitSize
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock;
@end

NS_ASSUME_NONNULL_END
