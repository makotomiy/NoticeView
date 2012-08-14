//
//  WBWarningNoticeView.m
//  NoticeView
//
//  Created by Makoto Miyagawa on 02/08/12.
//  Copyright (c) 2012 Tito Ciuro. All rights reserved.
//

#import "WBWarningNoticeView.h"
#import "WBNoticeView_Private.h"

@implementation WBWarningNoticeView

@synthesize message;

+ (WBWarningNoticeView *)warningNoticeInView:(UIView *)view title:(NSString *)title
{
    WBWarningNoticeView *notice = [[WBWarningNoticeView alloc]initWithView:view title:title];
    
    return notice;
}

- (void)show
{
    [self _showNoticeOfType:WBNoticeViewTypeWarning
                       view:self.view
                      title:self.title
                    message:nil
                   duration:self.duration
                      delay:self.delay
                      alpha:self.alpha
                    yOrigin:self.originY];
}

@end
