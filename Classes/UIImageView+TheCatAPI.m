/*
 UIImageView+TheCatAPI.m
 Created by Nate Bailey on 8/5/14.
 Copyright (c) 2014 DANIEL. All rights reserved.
 
 The MIT License (MIT)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 the Software, and to permit persons to whom the Software is furnished to do so,
 subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
                      ∆    ∆
                    >( - . - )<
                     (  u u  ) "\\
                     ( )____( )=//
 
 HIGH DEFINITION KITTY COURTESY OF LORI BAILEY @LORIGATO
*/

#import "UIImageView+TheCatAPI.h"

@implementation UIImageView (TheCatAPI)

#pragma mark Public

////////////////////////////////////////////////////////////////////////////////
+ (UIImageView *)imageViewWithCatImage
{
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView useCatImage];
    return imageView;
}

////////////////////////////////////////////////////////////////////////////////
+ (UIImageView *)imageViewWithCatImageWithCategory:(CATegory)category
{
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView useCatImageWithCategory:category];
    return imageView;
}

////////////////////////////////////////////////////////////////////////////////
- (void)useCatImage
{
    [self fetchImageWithParams:nil];
}

////////////////////////////////////////////////////////////////////////////////
- (void)useCatImageWithCategory:(CATegory)category
{
    NSArray *categories = @[@"HATS",@"SPACE",@"FUNNY",@"SUNGLASSES",@"BOXES",
                            @"CATURDAY",@"TIES",@"DREAM",@"KITTENS",@"SINKS",@"CLOTHES"];
    NSString *parameterString = [NSString stringWithFormat:@"?category=%@", categories[category]];
    [self fetchImageWithParams:parameterString];
}


#pragma mark Private

////////////////////////////////////////////////////////////////////////////////
- (void)fetchImageWithParams:(NSString *)params
{
    self.contentMode = UIViewContentModeScaleAspectFill;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSString *urlString = [NSString stringWithFormat:@"http://thecatapi.com/api/images/get"];
        if(params) {
            urlString = [urlString stringByAppendingString:params];
        }
        
#if TARGET_IPHONE_SIMULATOR
        NSLog(@"CAT URL: %@", urlString);
#endif
        
        NSURL *url= [NSURL URLWithString:urlString];
        NSData *catData = [NSData dataWithContentsOfURL:url];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = [UIImage imageWithData:catData];
        });
    });
}

@end
