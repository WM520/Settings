//
//  ViewController.m
//  设置
//
//  Created by baiju on 2017/9/11.
//  Copyright © 2017年 baiju. All rights reserved.
//

#import "ViewController.h"
#import "XBSettingCell.h"
#import "XBSettingItemModel.h"
#import "XBSettingSectionModel.h"
#import "HeadView.h"
static NSString *cellID = @"minecell";

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) NSMutableArray * dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupSections];
    [self.view addSubview:self.mainTableView];
    HeadView * HeadView = [[NSBundle mainBundle] loadNibNamed:@"HeadView" owner:self options:nil].lastObject;
    HeadView.frame = CGRectMake(0, 0, self.view.frame.size.width, 120);
    self.mainTableView.tableHeaderView = HeadView;
}

- (void)setupSections
{
    //************************************section1
    XBSettingItemModel *item1 = [[XBSettingItemModel alloc]init];
    item1.funcName = @"共享记录";
    item1.executeCode = ^{
        
    };
    item1.img = [UIImage imageNamed:@"rightlink"];
    item1.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    item1.detailText = @"1381222222";
    XBSettingSectionModel *section1 = [[XBSettingSectionModel alloc]init];
    section1.sectionHeaderHeight = 18;
    section1.itemArray = @[item1];
    
    XBSettingItemModel *item2 = [[XBSettingItemModel alloc]init];
    item2.funcName = @"使用指南";
    item2.img = [UIImage imageNamed:@"rightlink"];
    item2.executeCode = ^{
//        IntroduceViewController *vc = [[IntroduceViewController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
    };
    item2.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    
    XBSettingItemModel *item3 = [[XBSettingItemModel alloc]init];
    item3.funcName = @"客服";
    item3.img = [UIImage imageNamed:@"rightlink"];
    item3.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    item3.executeCode = ^() {
//        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"tel://10010"]];
    };
    
    XBSettingItemModel *item4 = [[XBSettingItemModel alloc]init];
    item4.funcName = @"意见反馈";
    item4.img = [UIImage imageNamed:@"rightlink"];
    item4.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    item4.executeCode = ^{
//        FeedBackViewController * vc = [[FeedBackViewController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
    };
    
    
    XBSettingItemModel *item5 = [[XBSettingItemModel alloc]init];
    item5.funcName = @"更多";
    item5.img = [UIImage imageNamed:@"rightlink"];
    item5.executeCode = ^{
        NSLog(@"更多");
//        WMMoreViewController * vc = [[WMMoreViewController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
    };
    item5.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    
    XBSettingSectionModel *section2 = [[XBSettingSectionModel alloc]init];
    section2.sectionHeaderHeight = 18;
    section2.itemArray = @[item2, item3, item4, item5];
    
    
    XBSettingItemModel *item6 = [[XBSettingItemModel alloc]init];
    item6.funcName = @"使用指南";
    item6.img = [UIImage imageNamed:@"rightlink"];
    item6.executeCode = ^{
        //        IntroduceViewController *vc = [[IntroduceViewController alloc] init];
        //        [self.navigationController pushViewController:vc animated:YES];
    };
    item6.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    
    XBSettingItemModel *item7 = [[XBSettingItemModel alloc]init];
    item7.funcName = @"客服";
    item7.img = [UIImage imageNamed:@"rightlink"];
    item7.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    item7.executeCode = ^() {
        //        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"tel://10010"]];
    };
    
    
    XBSettingSectionModel *section3 = [[XBSettingSectionModel alloc]init];
    section3.sectionHeaderHeight = 18;
    section3.itemArray = @[item6, item7];
    
    XBSettingItemModel *item8 = [[XBSettingItemModel alloc]init];
    item8.funcName = @"使用指南";
    item8.img = [UIImage imageNamed:@"rightlink"];
    item8.executeCode = ^{
        //        IntroduceViewController *vc = [[IntroduceViewController alloc] init];
        //        [self.navigationController pushViewController:vc animated:YES];
    };
    item8.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    
    XBSettingItemModel *item9 = [[XBSettingItemModel alloc]init];
    item9.funcName = @"使用指南";
    item9.img = [UIImage imageNamed:@"rightlink"];
    item9.executeCode = ^{
        //        IntroduceViewController *vc = [[IntroduceViewController alloc] init];
        //        [self.navigationController pushViewController:vc animated:YES];
    };
    item9.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    
    XBSettingItemModel *item10 = [[XBSettingItemModel alloc]init];
    item10.funcName = @"使用指南";
    item10.img = [UIImage imageNamed:@"rightlink"];
    item10.executeCode = ^{
        //        IntroduceViewController *vc = [[IntroduceViewController alloc] init];
        //        [self.navigationController pushViewController:vc animated:YES];
    };
    item10.accessoryType = XBSettingAccessoryTypeDisclosureIndicator;
    
    XBSettingSectionModel *section4 = [[XBSettingSectionModel alloc]init];
    section4.sectionHeaderHeight = 18;
    section4.itemArray = @[item8, item9, item10];
    
    
    [self.dataArray addObject:section1];
    [self.dataArray addObject:section2];
    [self.dataArray addObject:section3];
    [self.dataArray addObject:section4];
}


#pragma mark -UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{

    return 18;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    XBSettingSectionModel *sectionModel = self.dataArray[indexPath.section];
    XBSettingItemModel *itemModel = sectionModel.itemArray[indexPath.row];
    if (itemModel.executeCode) {
        itemModel.executeCode();
    }
}


#pragma mark -UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    XBSettingSectionModel *sectionModel = self.dataArray[section];
    return sectionModel.itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XBSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.selectionStyle =UITableViewCellSelectionStyleNone;
    XBSettingSectionModel *sectionModel = self.dataArray[indexPath.section];
    XBSettingItemModel *itemModel = sectionModel.itemArray[indexPath.row];
    if (!cell) {
        cell = [[XBSettingCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.item = itemModel;
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableView *)mainTableView
{
    if (!_mainTableView) {
        _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
        [_mainTableView registerClass:[XBSettingCell class] forCellReuseIdentifier:cellID];
        _mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTableView.dataSource = self;
        _mainTableView.delegate = self;
        _mainTableView.scrollEnabled = YES;
    }
    return _mainTableView;
}
- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

@end
