//
//  UIImageView+SDImagePipeline.h
//  SDWebImageDemo
//
//  Created by 马远征 on 9/10/20.
//  Copyright © 2020 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDWebImage.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (SDImagePipeline)
- (void)sd_setImageWithURL:(nullable NSURL *)url
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers
                 completed:(nullable SDExternalCompletionBlock)completedBlock;


- (void)sd_setImageWithURL:(nullable NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              transformers:(nonnull NSArray<id<SDImageTransformer>> *)transformers
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock;
@end

NS_ASSUME_NONNULL_END
