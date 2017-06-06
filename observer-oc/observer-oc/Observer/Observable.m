//
//  Observable.m
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "Observable.h"

@interface Observable()

@property (nonatomic) NSMutableArray* obsArray;
@property BOOL changed;

@end

@implementation Observable
- (instancetype)init{
    self = [super init];
    if (self) {
        _obsArray = [[NSMutableArray alloc] init];
        _changed = NO;
    }
    return self;
}
//注册观察者(订阅)
-(void)addObserver:(id<Observer>)o{
    [_obsArray addObject:o];
}

//删除观察者(取消订阅)
-(void)deleteObserver:(id<Observer>)o{
    [_obsArray removeObject:o];
}

//删除所有观察者
-(void)deleteObservers{
    [_obsArray removeAllObjects];
}

//观察者数量
-(NSInteger)countObserver{
    return _obsArray.count;
}

//通知
-(void)notifyObservers{
    [self notifyObservers:nil];
}

-(void)notifyObservers:(NSObject*)msg{
    if (!_changed) {
        return;
    }
    
    [self clearChanged];
    
    for (id<Observer> o in _obsArray) {
        [o update:self msg:msg];
    }
}

//更新数据
-(void)setChanged{
    _changed = YES;
}

//取消更新
-(void)clearChanged{
    _changed = NO;
}

//获取更新状态(语法不要很容易忘记，java高级语法)
-(BOOL)hasChanged{
    return _changed;
}

@end
