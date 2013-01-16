//
//  PhoneDetailViewController.m
//  ESBall
//
//  Created by mobile on 13/1/15.
//  Copyright (c) 2013年 nelson. All rights reserved.
//

#import "PhoneDetailViewController.h"
#import "FileFinder.h"
#import "PhoneGameBetLimitViewController.h"
#import "PhoneGameRulesViewController.h"
#import "PhoneHistoryViewController.h"
@interface PhoneDetailViewController ()

@end

@implementation PhoneDetailViewController
@synthesize backgroundImageView = _backgroundImageView;

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
    
      FileFinder *fileFinder = [FileFinder fileFinder];
     _backgroundImageView.image = [UIImage imageWithContentsOfFile:[fileFinder findPathForFileWithFileName:@"detail_options.png"]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)createVideoSetting
{

    
    VideoSettingViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"VideoSettingViewController"];
    controller.theDelegate = self;
    [self presentViewController:controller animated:YES completion:nil];


}

-(void)createGameBetLimit
{
    PhoneGameBetLimitViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"GameBetLimitViewController"];
    controller.theDelegate = self;
    controller.gameBetDelegate = self;
 
    [self presentViewController:controller animated:YES completion:nil ];    
  
}

-(void)createGameRules
{
     PhoneGameRulesViewController  *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"GameRulesViewController"];
    controller.theDelegate = self;
    controller.gameRuleDelegate = self;
    
    [self presentViewController:controller animated:YES completion:nil ];
    

}

-(void)createHistory
{
    PhoneHistoryViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"HistoryViewController"];
    controller.theDelegate = self;
    controller.historyDelegate = self;
    
    [self presentViewController:controller animated:YES completion:nil ];
    
   /* if(_historyControllerID == nil)
        return;
    
    HistoryViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:_historyControllerID];
    controller.theDelegate = self;
    controller.historyDelegate = self;
    [controller addToController:self inRect:_referenceView.frame];*/
}


@end
