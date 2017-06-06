//
//  UserAdapter.m
//  Dream_20170519_Architect_Adapter
//
//  Created by Dream on 2017/5/19.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "UserAdapter.h"
#import "UserModel.h"

@implementation UserAdapter

- (instancetype)init{
    self = [super init];
    if (self) {
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"姓名" name:@"哈哈"]];
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"NBA" name:@"骑士队"]];
    }
    return self;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //父类默认Cell
    UITableViewCell* cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    UserModel* model = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = model.title;
    cell.detailTextLabel.text = model.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UserModel* model = [self.dataArray objectAtIndex:indexPath.row];
//    NSLog(@"%@",model.name);
    if (self.ClickBlock) {
        self.ClickBlock(model);
    }
    
}

@end
