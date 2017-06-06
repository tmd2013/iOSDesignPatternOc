//
//  Observable.h
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
@interface Observable : NSObject
//注册观察者(订阅)
-(void)addObserver:(id<Observer>)o;

//删除观察者(取消订阅)
-(void)deleteObserver:(id<Observer>)o;

//删除所有观察者
-(void)deleteObservers;

//观察者数量
-(NSInteger)countObserver;

//通知
-(void)notifyObservers;
-(void)notifyObservers:(NSObject*)msg;

//更新数据
-(void)setChanged;

//取消更新
-(void)clearChanged;

//获取更新状态
-(BOOL)hasChanged;
@end
