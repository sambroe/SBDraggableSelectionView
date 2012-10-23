//
//  SBDraggableSelectionView.h
//  Parkr
//
//  Created by Sam Broe on 10/14/12.
//  Copyright (c) 2012 Sam Broe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBDraggableSelectionView : UIView

//@property (nonatomic, assign) NSInteger currentXDir;
//@property (nonatomic, assign) NSInteger currentYDir;
@property (nonatomic, assign) CGPoint directionVector;
@property (nonatomic, assign) CGPoint currentTouchPoint;
@property (nonatomic, readonly) UIView *viewForPointLocation;

-(void)evalutateSelectionForPoint:(CGPoint)point directon:(CGPoint)direction;

@end
