//
//  UserModel.m
//  Dream_20170519_Architect_Adapter
//
//  Created by Dream on 2017/5/19.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (instancetype)initWithTitle:(NSString*)title name:(NSString*)name{
    self = [super init];
    if (self) {
        _title = title;
        _name = name;
    }
    return self;
}

@end
