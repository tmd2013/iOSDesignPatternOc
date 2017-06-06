//
//  WxEmsObservable.h
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "Observable.h"

@interface WxEmsObservable : Observable
-(void)setTitle:(NSString*)title;

-(void)push;
@end
