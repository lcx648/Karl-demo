//
//  BViewController.m
//  noti
//
//  Created by 阎黄 on 16/6/6.
//  Copyright © 2016年 阎黄. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btnClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    //1.添加字典,将要传的值通过Key值设置传递
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:self.textField.text,@"text", nil];
    //2.创建通知
    NSNotification *noti = [NSNotification notificationWithName:@"passText" object:nil userInfo:dic];
    //3.通过通知中心发送通知
    [[NSNotificationCenter defaultCenter] postNotification:noti];
}


@end
