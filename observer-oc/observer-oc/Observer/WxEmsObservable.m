//
//  WxEmsObservable.m
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "WxEmsObservable.h"

@interface WxEmsObservable ()

@property (nonatomic) NSString* title;

@end

@implementation WxEmsObservable
-(void)setTitle:(NSString*)title{
    if (![self.title isEqualToString:title]) {
        [self setChanged];
    }
    _title = title;
}

-(void)push{
    [self notifyObservers:self.title];
}

@end
