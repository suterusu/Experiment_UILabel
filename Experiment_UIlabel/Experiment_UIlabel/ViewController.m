//
//  ViewController.m
//  Experiment_UIlabel
//
//  Created by Inba on 2017/12/23.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import "ViewController.h"
#import "TestUILabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    TestUILabel *uilabel = [[TestUILabel alloc]init];

    uilabel.text = @"ああああああああああああああああああああああ";
    uilabel.font = [UIFont systemFontOfSize:10];

    //uilabel.numberOfLines = 0;
    uilabel.lineBreakMode = NSLineBreakByWordWrapping;


    [self.view addSubview:uilabel];
    NSLog(@"------------------下");

    [uilabel sizeToFit];
    NSLog(@"------------------");

    
    TestUILabel *uilabel2 = [[TestUILabel alloc]init];
    uilabel2.text = @"あああああああああああああああああああああああ";
    uilabel2.font = [UIFont systemFontOfSize:10];
    uilabel2.frame = CGRectMake(0, 0, 0, 50);
    uilabel2.lineBreakMode = NSLineBreakByClipping;


    uilabel2.numberOfLines = 0;

    [self.view addSubview:uilabel2];

    NSLog(@"------------------下");

    [uilabel2 sizeToFit];
    NSLog(@"------------------");


    TestUILabel *uilabel3 = [[TestUILabel alloc]init];
    uilabel3.text = @"ああああああああああああああああああああああああああああ";
    uilabel3.font = [UIFont systemFontOfSize:10];
    uilabel3.frame = CGRectMake(0, 0, 10, 5);
    //uilabel3.lineBreakMode = NSLineBreakByWordWrapping;
    uilabel3.numberOfLines = 0;


    [self.view addSubview:uilabel3];

    NSLog(@"------------------下");

    
    [uilabel3 sizeToFit];
    NSLog(@"------------------");

    TestUILabel *uilabel4 = [[TestUILabel alloc]init];
    uilabel4.text = @"あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ";
    uilabel4.font = [UIFont systemFontOfSize:10];
    uilabel4.frame = CGRectMake(0, 0, 10, 5);
    uilabel4.lineBreakMode = NSLineBreakByClipping;
    uilabel4.numberOfLines = 0;

    [self.view addSubview:uilabel4];
    NSLog(@"------------------下");


    [uilabel4 sizeToFit];
    NSLog(@"------------------");

    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
