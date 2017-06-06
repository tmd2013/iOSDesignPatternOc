//
//  ViewController.m
//  strategy-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "ViewController.h"
#import "IFinancyStrategy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getMomeyWithFinancyWay:@"AlipayFinancyStrategy"];
}

- (void)getMomeyWithFinancyWay:(NSString *)financyWay
{
    id<IFinancyStrategy> strategy = [[NSClassFromString(financyWay) alloc]init];
    
    float money = [strategy financyWithMonth:6 money:10000];
    NSLog(@"%.2f",money);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
