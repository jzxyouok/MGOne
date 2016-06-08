//
//  MGHomeViewController.m
//  MGOne
//
//  Created by 穆良 on 16/5/9.
//  Copyright © 2016年 穆良. All rights reserved.
//

#import "MGHomeViewController.h"

@interface MGHomeViewController ()

@end

@implementation MGHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.创建cell
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    // 2.设置cell的数据
    cell.textLabel.text = [NSString stringWithFormat:@"---%02zd行", indexPath.row];
    
    // 3.返回cell
    return cell;
}


@end
