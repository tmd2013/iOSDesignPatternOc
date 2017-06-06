//
//  ComputerFactory.m
//  factory-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "ComputerFactory.h"

static ComputerFactory* _instance = nil;



@implementation ComputerFactory
+(instancetype) shareInstance
{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init] ;
    }) ;
    
    return _instance ;
}
+(id) allocWithZone:(struct _NSZone *)zone
{
    return [ComputerFactory shareInstance] ;
}

-(id) copyWithZone:(struct _NSZone *)zone
{
    return [ComputerFactory shareInstance] ;
}

- (id)getComputerWithType:(SFComputerType)type
{
    switch (type) {
        case SFComputerApple:
            return [[SFAppleComputer alloc]init];
            break;
        case SFComputerDell:
            return [[SFDellComputer alloc]init];
            break;
        default:
            break;
    }
}

@end
