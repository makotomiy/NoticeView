//
//  WBYellowGradientView.m
//  GradientView
//
//  Created by Tito Ciuro on 6/3/12.
//  Copyright (c) 2012 Webbo, LLC. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "WBYellowGradientView.h"

@implementation WBYellowGradientView

- (void)drawRect:(CGRect)rect
{
    
    UIColor *redTop = [UIColor colorWithRed:187/255.0f green:165/255.0f blue:37/255.0f alpha:1.0];
    UIColor *redBot = [UIColor colorWithRed:155/255.0f green:135/255.0f blue:18/255.0f alpha:1.0];
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSArray arrayWithObjects:
                       (id)redTop.CGColor,
                       (id)redBot.CGColor,
                       nil];
    gradient.locations = [NSArray arrayWithObjects:
                          [NSNumber numberWithFloat:0.0f],
                          [NSNumber numberWithFloat:0.7],
                          nil];
    
    [self.layer insertSublayer:gradient atIndex:0];
    
    UIView *firstTopYellowLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, 1.0)];
    firstTopYellowLine.backgroundColor = [UIColor colorWithRed:207/255.0f green:192/255.0f blue:104/255.0f alpha:1.0];
    [self addSubview:firstTopYellowLine];
    
    UIView *secondTopYellowLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, 1.0, self.bounds.size.width, 1.0)];
    secondTopYellowLine.backgroundColor = [UIColor colorWithRed:189/255.0f green:167/255.0f blue:46/255.0f alpha:1.0];
    [self addSubview:secondTopYellowLine];
    
    UIView *firstBotYellowLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, self.bounds.size.height - 1, self.frame.size.width, 1.0)];
    firstBotYellowLine.backgroundColor = [UIColor colorWithRed:150/255.0f green:130/255.0f blue:19/255.0f alpha:1.0];
    [self addSubview:firstBotYellowLine];
    
    UIView *secondBotDarkLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, self.bounds.size.height, self.frame.size.width, 1.0)];
    secondBotDarkLine.backgroundColor = [UIColor colorWithRed:73/255.0f green:62/255.0f blue:4/255.0f alpha:1.0];
    [self addSubview:secondBotDarkLine];
}

@end
