//
//  CATViewController.m
//  TheCatAPI
//
//  Created by Nate Bailey on 08/05/2014.
//  Copyright (c) 2014 Nate Bailey. All rights reserved.
//

#import "CATViewController.h"
#import <TheCatAPI/UIImageView+TheCatAPI.h>

@implementation CATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(refresh)]];
    [self.imageView useCatImage];
}

- (void)refresh
{
    [self.imageView useCatImageWithCategory:CATegoryCaturday];
}

@end
