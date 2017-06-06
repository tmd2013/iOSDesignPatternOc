//
//  AbsComputerFactory.h
//  factory-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbsComputerCpu.h"
#import "AbsComputerDisplaycard.h"

@protocol AbsComputerFactory <NSObject>
//CPU
-(id<AbsComputerCpu>)getCpu;

//显卡
-(id<AbsComputerDisplaycard>)getDisplaycard;
@end
