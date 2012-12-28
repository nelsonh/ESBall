//
//  WithdrawalViewController.m
//  ESBall
//
//  Created by tomneo2004 on 12/11/18.
//  Copyright (c) 2012年 nelson. All rights reserved.
//

#import "WithdrawalViewController.h"

@interface WithdrawalViewController ()

@end

@implementation WithdrawalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSString *urlStr = @"https://esball.com/app/member/get_money_check.php?uid=i8a28389z6c9he0hzerfp0iz4rgc7z2143";
    
    NSString *htmlStr = [NSString stringWithContentsOfURL:[NSURL URLWithString:urlStr] encoding:NSUTF8StringEncoding error:nil];
    
    [self.infoView loadHTMLString:htmlStr baseURL:[NSURL URLWithString:urlStr]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
