//
//  UIImageView+SDImagePipeline.m
//  SDWebImageDemo
//
//  Created by 马远征 on 9/10/20.
//  Copyright © 2020 myz. All rights reserved.
//

#import "UIImageView+SDImagePipeline.h"
#import "UIImageView+SDTransformer.h"

@implementation UIImageView (SDImagePipeline)
- (void)sd_setImageWithURL:(NSURL *)url
              transformers:(NSArray<id<SDImageTransformer>> *)transformers {
    
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              transformers:(NSArray<id<SDImageTransformer>> *)transformers {
    
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url placeholderImage:placeholder transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              transformers:(NSArray<id<SDImageTransformer>> *)transformers {
    
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer];
}

- (void)sd_setImageWithURL:(NSURL *)url
              transformers:(NSArray<id<SDImageTransformer>> *)transformers
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url placeholderImage:nil options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
              transformers:(NSArray<id<SDImageTransformer>> *)transformers
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:0 transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              transformers:(NSArray<id<SDImageTransformer>> *)transformers
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer completed:completedBlock];
}

- (void)sd_setImageWithURL:(NSURL *)url
          placeholderImage:(nullable UIImage *)placeholder
                   options:(SDWebImageOptions)options
              transformers:(NSArray<id<SDImageTransformer>> *)transformers
                  progress:(nullable SDImageLoaderProgressBlock)progressBlock
                 completed:(nullable SDExternalCompletionBlock)completedBlock {
    
    SDImagePipelineTransformer *transformer = [SDImagePipelineTransformer transformerWithTransformers:transformers];
    [self sd_setImageWithURL:url placeholderImage:placeholder options:options transformer:transformer progress:progressBlock completed:completedBlock];
}
@end
