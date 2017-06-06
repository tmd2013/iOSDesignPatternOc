//
//  ComputerFactory.h
//  factory-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFAppleComputer.h"
#import "SFDellComputer.h"

typedef enum : NSUInteger {
    SFComputerApple, //苹果电脑
    SFComputerDell  //戴尔电脑
} SFComputerType;
@interface ComputerFactory : NSObject
- (id)getComputerWithType:(SFComputerType)type;
@end
