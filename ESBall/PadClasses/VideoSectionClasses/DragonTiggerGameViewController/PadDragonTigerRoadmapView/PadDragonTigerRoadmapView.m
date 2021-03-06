//
//  PadDragonTigerRoadmapView.m
//  ESBall
//
//  Created by Nelson on 12/27/12.
//  Copyright (c) 2012 nelson. All rights reserved.
//

#import "PadDragonTigerRoadmapView.h"

@implementation PadDragonTigerRoadmapView


#pragma mark - override
-(void)awakeFromNib
{
    [super awakeFromNib];
    
    FileFinder *fileFinder = [FileFinder fileFinder];
    self.backgroundImageView.image = [UIImage imageWithContentsOfFile:[fileFinder findPathForFileWithFileName:@"DTRoute_bg@2x.png"]];
}

-(NSString *)playerFirstAskingImageName
{
    return @"route_b@2x.png";
}

-(NSString *)playerSecondAskingImageName
{
    return @"route_b2@2x.png";
}

-(NSString *)playerThirdAskingImageName
{
    return @"route_b3@2x.png";
}

-(NSString *)bankerFirstAskingImageName
{
    return @"route_r@2x.png";
}

-(NSString *)bankerSecondAskingImageName
{
    return @"route_r2@2x.png";
}

-(NSString *)bankerThirdAskingImageName
{
    return @"route_r3@2x.png";
}

@end
