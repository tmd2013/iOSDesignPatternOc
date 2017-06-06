//
//  YooliFinancyStrategy.m
//  strategy-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "YooliFinancyStrategy.h"

@implementation YooliFinancyStrategy

//有利网具体的算法
-(float)financyWithMonth:(float)month money:(float)money{
    if (month == 3) {
        return money + money * 0.07f / 12 * 3;
    }else if(month == 6){
        return money + money * 0.08f / 12 * 6;
    }else if(month == 12){
        return money + money * 0.095f / 12 * 12;
    }else if(month == 24){
        return money + money * 0.105f / 12 * 24;
    }else{
        //跑出异常，不做任何的处理
        @throw [[NSException alloc] initWithName:@"参数错误" reason:@"您输入的月份有误！请重写输入!" userInfo:nil];
    }
    return 0;
}
@end
