//
//  ObjectAdapter.h
//  Adaper-ex
//
//  Created by nonoking on 2017/6/4.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"

//对象适配器特点
//特点一：Adapter需要实现目标接口
//特点二：Adapter需要持有被适配对象的引用(指针)
@interface ObjectAdapter : NSObject<Target>

@end
