//
//  Adapter.h
//  Adaper-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adaptee.h"
#import "Target.h"
//适配器--->类适配模式
//特点一：类适配器模式--->Adapter需要继承Adaptee（被适配对象）
//特点二：类适配器模式--->Adapter实现目标接口Target
@interface Adapter : Adaptee<Target>

@end
