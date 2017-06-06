//
//  ViewController.m
//  Adaper-ex
//
//  Created by nonoking on 2017/6/3.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "ViewController.h"
#import "Adapter.h"
#import "UserAdapter.h"
#import "UserModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong)BaseAdapter* adapter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAdapter];
}


-(void)initAdapter{
    //模块划分
    _adapter = [[UserAdapter alloc] init];
    _adapter.ClickBlock = ^(id clickdata){
        UserModel *user = clickdata;
        NSLog(@"%@",user.name);
    };
    _tableView.delegate = _adapter;
    _tableView.dataSource = _adapter;
}

- (void)simpleAdapter
{
    Adapter* adapter = [[Adapter alloc] init];
        float cny = [adapter getCNY];
        NSLog(@"人民币：%f",cny);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
