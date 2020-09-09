//
//  UIImageView+SDRoundCorner.h
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDWebImage.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (SDRoundCorner)

- (void)sd_setImageWithURL:(nullable NSURL *)url
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor;


- (void)sd_setImageWithURL:(NSURL *)url
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                 completed:(nullable SDExternalCompletionBlock)completedBlock;



- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              cornerRadius:(CGFloat)cornerRadius
                   corners:(SDRectCorner)corners
               borderWidth:(CGFloat)borderWidth
               borderColor:(nullable UIColor *)borderColor
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock;
@end

NS_ASSUME_NONNULL_END
