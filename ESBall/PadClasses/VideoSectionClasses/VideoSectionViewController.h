//
//  SportSectionViewController.h
//  ESBall
//
//  Created by nelson on 12/11/15.
//  Copyright (c) 2012年 nelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListScrollView.h"
#import "ItemDropdownViewController.h"
#import "BaseGameViewController.h"
#import "LoadingHUD.h"

@interface VideoSectionViewController : UIViewController<ListScrollViewDelegate, ItemDropdownViewControllerDelegate, BaseGameViewControllerDelegate, ServerInterfaceDelegate>{

    //hold initial ListScrollView's rect
    CGRect rectForListScrollView;
    
    //hold initial ItemViewControllers perticulary for order
    NSMutableArray *itemsDataOrigin;
    
    //hold ItemViewControllers
    NSMutableArray *itemsData;
    
    //hold removed item data index
    NSMutableArray *removedItemDataIndex;
    
    //temporary data store
    //indicate it is changing table
    //BOOL isChangingTable;
    int tableNumberToChange;
    int gameTypeNumberToChange;
    NSString *storyboardControllerID;
    
    LoadingHUD *loadingHUD;
}

@end
