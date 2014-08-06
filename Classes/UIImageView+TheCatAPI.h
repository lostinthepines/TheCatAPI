/*
 UIImageView+TheCatAPI.h
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

#import <UIKit/UIKit.h>

// Categories fetched from The Cat API on 8/5/14
typedef NS_ENUM(NSInteger, CATegory) {
    CATegoryHats,
    CATegorySpace,
    CATegoryFunny,
    CATegorySunglasses,
    CATegoryBoxes,
    CATegoryCaturday,
    CATegoryTies,
    CATegoryDream,
    CATegoryKittens,
    CATegorySinks,
    CATegoryClothes
};

@interface UIImageView (TheCatAPI)

/** Returns a new UIImageView with a cat image

 @return A UIImageView with a cat image
 */
+ (UIImageView *)imageViewWithCatImage;

/** Returns a new UIImageView with a cat image from a certain CATegory (heh heh heh)
 
 @return A UIImageView with a cat image from a certain category
 */
+ (UIImageView *)imageViewWithCatImageWithCategory:(CATegory)category;

/** Populates the UIImageView with a cat image
 */
- (void)useCatImage;

/** Populates the UIImageView with a cat image from a certain category
 
 @param CATegory enum value indicating a certain category
 */
- (void)useCatImageWithCategory:(CATegory)category;

@end
