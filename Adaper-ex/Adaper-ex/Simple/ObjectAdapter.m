//
//  ObjectAdapter.m
//  Adaper-ex
//
//  Created by nonoking on 2017/6/4.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "ObjectAdapter.h"
#import "Adaptee.h"

@interface ObjectAdapter ()

@property (nonatomic) Adaptee* adaptee;

@end
@implementation ObjectAdapter
- (instancetype)initWithAdaptee:(Adaptee*)adaptee{
    self = [super init];
    if (self) {
        _adaptee = adaptee;
    }
    return self;
}

-(float)getCNY{
    return [_adaptee getUSD] * 0.688f;
}
@end
