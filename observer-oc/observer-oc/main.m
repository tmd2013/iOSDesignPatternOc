//
//  main.m
//  observer-oc
//
//  Created by nonoking on 2017/6/5.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observable.h"

#import "WxEmsObservable.h"
#import "AAAObserver.h"
#import "BBBObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //测试微信公众号
        WxEmsObservable* observable = [[WxEmsObservable alloc] init];
        id<Observer> aaa = [[AAAObserver alloc] init];
        id<Observer> bbb = [[BBBObserver alloc] init];
        [observable addObserver:aaa];
        [observable addObserver:bbb];
        
        
        [observable setTitle:@"发送消息"];
        [observable push];
        [observable push];
        [observable push];
    }
    return 0;
}
