//
//  Adapter.m
//  Adaper-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "Adapter.h"
#import "Adaptee.h"
#import "Target.h"
@implementation Adapter
-(float)getCNY{
    return [self getUSD] * 6.88f;
}
@end
