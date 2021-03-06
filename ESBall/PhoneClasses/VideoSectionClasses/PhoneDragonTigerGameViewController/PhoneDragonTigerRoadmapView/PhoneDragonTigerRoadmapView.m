//
//  PhoneDragonTigerRoadmapView.m
//  ESBall
//
//  Created by Nelson on 1/28/13.
//  Copyright (c) 2013 nelson. All rights reserved.
//

#import "PhoneDragonTigerRoadmapView.h"

@implementation PhoneDragonTigerRoadmapView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(NSUInteger)RoadmapChartNumberOfContent:(RoadmapChart *)roadmap
{
    //override super one since ipod only have 5 content
    return 5;
}

-(NSString *)playerFirstAskingImageName
{
    return @"route_b.png";
}

-(NSString *)playerSecondAskingImageName
{
    return @"route_b2.png";
}

-(NSString *)playerThirdAskingImageName
{
    return @"route_b3.png";
}

-(NSString *)bankerFirstAskingImageName
{
    return @"route_r.png";
}

-(NSString *)bankerSecondAskingImageName
{
    return @"route_r2.png";
}

-(NSString *)bankerThirdAskingImageName
{
    return @"route_r3.png";
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
