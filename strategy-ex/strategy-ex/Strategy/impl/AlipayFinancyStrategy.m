//
//  AlipayFinancyStrategy.m
//  strategy-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "AlipayFinancyStrategy.h"

@implementation AlipayFinancyStrategy
//具体算法
-(float)financyWithMonth:(float)month money:(float)money{
    if (month == 6) {
        return money + money * 0.03f / 12 * 6;
    }else if(month == 12){
        return money + money * 0.03f / 12 * 12;
    }else if(month == 24){
        return money + money * 0.03f / 12 * 24;
    }else{
        //跑出异常，不做任何的处理
        @throw [[NSException alloc] initWithName:@"参数错误" reason:@"您输入的月份有误！请重写输入!" userInfo:nil];
    }
    return 0;
}
@end
