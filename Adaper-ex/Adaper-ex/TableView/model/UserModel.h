//
//  UserModel.h
//  Dream_20170519_Architect_Adapter
//
//  Created by Dream on 2017/5/19.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property (nonatomic,strong) NSString* title;
@property (nonatomic,strong) NSString* name;

- (instancetype)initWithTitle:(NSString*)title name:(NSString*)name;

@end
