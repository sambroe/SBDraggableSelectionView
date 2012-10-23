//
//  SBDraggableSelectionView.m
//  Parkr
//
//  Created by Sam Broe on 10/14/12.
//  Copyright (c) 2012 Sam Broe. All rights reserved.
//

#import "SBDraggableSelectionView.h"

@implementation SBDraggableSelectionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(UIView *)viewForPointLocation
{
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.viewForPointLocation];
    
//    _currentXDir = 0;
//    _currentYDir = 0;
    _directionVector = CGPointZero;
    
    _currentTouchPoint = point;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.viewForPointLocation];
    
    NSInteger xDir = 0;
    NSInteger yDir = 0;
    
    if (point.x > _currentTouchPoint.x)
    {
        xDir = 1;
    }
    else if (point.x < _currentTouchPoint.x)
    {
        xDir = -1;
    }
    
    if (point.y > _currentTouchPoint.y)
    {
        yDir = 1;
    }
    else if (point.y < _currentTouchPoint.y)
    {
        yDir = -1;
    }
    
    [self evalutateSelectionForPoint:point directon:CGPointMake(xDir, yDir)];
    
//    _currentXDir = xDir;
//    _currentYDir = yDir;
    _directionVector = CGPointMake(xDir, yDir);
    _currentTouchPoint = point;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.viewForPointLocation];
    
    [self evalutateSelectionForPoint:point directon:CGPointZero];
    
//    _currentXDir = 0;
//    _currentYDir = 0;
    _directionVector = CGPointZero;
    _currentTouchPoint = CGPointZero;
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.viewForPointLocation];
    
    [self evalutateSelectionForPoint:point directon:CGPointZero];
    
//    _currentXDir = 0;
//    _currentYDir = 0;
    _directionVector = CGPointZero;
    _currentTouchPoint = CGPointZero;
}

-(void)evalutateSelectionForPoint:(CGPoint)point directon:(CGPoint)direction
{
    
}

@end
