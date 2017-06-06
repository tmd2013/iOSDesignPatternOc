//
//  ViewController.m
//  factory-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "ViewController.h"
#import "ComputerFactory.h"


#import "AbsComputerFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self absFactoryDemo:@"AbsAppleComputerFactory"];
}

- (void)absFactoryDemo:(NSString *)className
{
    id<AbsComputerFactory> factory =  [[NSClassFromString(className) alloc]init];
    id<AbsComputerCpu> cpu = [factory getCpu];
    id<AbsComputerDisplaycard> displayCard = [factory getDisplaycard];
    [cpu printInfo];
    [displayCard printInfo];
}

- (void)simpleFactoryDemo
{
    ComputerFactory *simpleFactory = [[ComputerFactory alloc]init];
    SFAppleComputer *mac = [simpleFactory getComputerWithType:SFComputerApple];
    [mac printInfo];
    SFDellComputer *dell = [simpleFactory getComputerWithType:SFComputerDell];
    [dell printInfo];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
