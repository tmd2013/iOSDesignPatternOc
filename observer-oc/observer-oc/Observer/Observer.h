//
//  Observer.h
//  observer-oc
//
//  Created by nonoking on 2017/6/6.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Observable;
@protocol Observer <NSObject>

-(void)update:(Observable*)o msg:(NSObject*)msg;

@end
