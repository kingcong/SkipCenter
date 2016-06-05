//
//  CWSuperViewController.m
//  SkipCenter
//
//  Created by kingcong on 16/6/5.
//  Copyright © 2016年 王聪. All rights reserved.
//

#import "CWSuperViewController.h"

@interface CWSuperViewController ()

@end

@implementation CWSuperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setColor:(UIColor *)color
{
    _color = color;
    
    self.view.backgroundColor = color;
}

- (void)setCustomtitle:(NSString *)customtitle
{
    _customtitle = customtitle;
    
    self.title = customtitle;
}

@end
