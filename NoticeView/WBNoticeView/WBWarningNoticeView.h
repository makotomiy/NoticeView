//
//  WBWarningNoticeView.h
//  NoticeView
//
//  Created by Makoto Miyagawa on 02/08/12.
//  Copyright (c) 2012 Tito Ciuro. All rights reserved.
//

#import "WBBaseNoticeView.h"

@interface WBWarningNoticeView : WBBaseNoticeView

+ (WBWarningNoticeView *)warningNoticeInView:(UIView *)view title:(NSString *)title;

@property (nonatomic, strong) NSString *message; // default: @"Information not provided."

@end
