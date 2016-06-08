//
//  ViewController.m
//  noti
//
//  Created by 阎黄 on 16/6/6.
//  Copyright © 2016年 阎黄. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //4.注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(act:) name:@"passText" object:nil];
}

//5.通知执行的方法
-(void)act:(NSNotification*)text{
    self.label.text = text.userInfo[@"text"];
    //6.移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"passText" object:nil];
}

@end