//
//  BetInfo.h
//  ESBall
//
//  Created by Nelson on 12/4/12.
//  Copyright (c) 2012 nelson. All rights reserved.
//

//can be subclass

#import <UIKit/UIKit.h>

@interface BetInfoView : UIView

@property (nonatomic, weak) IBOutlet UILabel *maxBetLabel;
@property (nonatomic, weak) IBOutlet UILabel *currentBetLabel;
@property (nonatomic, weak) IBOutlet UILabel *betResultLabel;

/**
 * A method to set max bet
 *
 * @param maxBet value to set 
 */
-(void)setMaxBet:(double)maxBet;

/**
 * A method to set current bet
 *
 * @param currentBet value to set 
 */
-(void)setCurrentBet:(double)currentBet;

/**
 * A method to set bet final result
 *
 * @param betFinalResult value to set
 */
-(void)setBetFinalResult:(double)betFinalResult;

@end
