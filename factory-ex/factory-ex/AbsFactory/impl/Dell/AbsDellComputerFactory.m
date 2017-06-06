//
//  AbsDellComputerFactory.m
//  factory-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "AbsDellComputerFactory.h"
#import "AbsDellComputerCpu.h"
#import "AbsDellComputerDisplaycard.h"

@implementation AbsDellComputerFactory

//CPU
-(id<AbsComputerCpu>)getCpu
{
    return [[AbsDellComputerCpu alloc] init];
}

//显卡
-(id<AbsComputerDisplaycard>)getDisplaycard
{
    return [[AbsDellComputerDisplaycard alloc] init];
}


@end
