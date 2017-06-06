//
//  AAAObserver.m
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "AAAObserver.h"

@implementation AAAObserver

- (void)update:(id)o msg:(NSObject *)msg
{
    NSLog(@"AAA收到了消息，消息内容是：%@",msg);
}

@end
