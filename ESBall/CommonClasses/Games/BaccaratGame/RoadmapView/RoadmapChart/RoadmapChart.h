//
//  RoadmapChart.h
//  ESBall
//
//  Created by Nelson on 12/6/12.
//  Copyright (c) 2012 nelson. All rights reserved.
//

#import "RoadmapDataView.h"

//781, 230 was defined for ipad
#define kRoadmapWidth 781
#define kRoadmapHeight 130


@interface RoadmapChart : RoadmapDataView{
    
    NSString *allRoadmapData[30];
    
}


@property (nonatomic, assign) BOOL redrawRoadmap;//Yes only redraw chart without update data default is NO


-(void)updateRoadmapData;
-(void)DrawRoadmapChart;
- (void)layoutScrollImages;

@end
