//
//  TodayViewController.m
//  Todytarget
//
//  Created by hyp on 16/1/7.
//  Copyright © 2016年 hyp. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib master 1243234.
    
    NSLog(@"------frame----%@",NSStringFromCGRect(self.view.frame));
//    self.view.backgroundColor = [UIColor whiteColor];
    UILabel* lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    lab.text = @"asldkjgaois啊谁来打卡过来；索爱i 哦啊；还是蛋糕啊 u 还有法国 i 录音惹我脾气偶很难过啊收到回复啊谁的看哈看世界法拉";
    lab.numberOfLines = 0;
    [self.view addSubview:lab];
//    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.and.right.equalTo(self.view);
//        make.top.equalTo(self.view);
//        make.height.mas_equalTo(100);
//        
//    }];
    
    
    
    
}
- (IBAction)btnClick:(UIButton *)sender {
    
    [self.extensionContext openURL:[NSURL URLWithString:@"widget://"] completionHandler:^(BOOL success) {
        NSLog(@"------frame----%@",NSStringFromCGRect(self.view.frame));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
