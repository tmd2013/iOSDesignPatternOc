//
//  AbsAppleComputerFactory.m
//  factory-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "AbsAppleComputerFactory.h"
#import "AbsAppleComputerCpu.h"
#import "AbsAppleComputerDisplaycard.h"

@implementation AbsAppleComputerFactory

//CPU
-(id<AbsComputerCpu>)getCpu
{
    return [[AbsAppleComputerCpu alloc] init];
}

//显卡
-(id<AbsComputerDisplaycard>)getDisplaycard
{
    return [[AbsAppleComputerDisplaycard alloc] init];
}


@end
