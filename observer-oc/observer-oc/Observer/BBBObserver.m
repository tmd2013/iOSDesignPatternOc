//
//  BBBObserver.m
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "BBBObserver.h"

@implementation BBBObserver
- (void)update:(id)o msg:(NSObject *)msg
{
    NSLog(@"BBB收到了消息，消息内容是：%@",msg);
}
@end
