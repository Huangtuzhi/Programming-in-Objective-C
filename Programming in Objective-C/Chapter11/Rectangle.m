//
//  Rectangle.m
//  prog1
//
//  Created by titus on 2017/9/12.
//  Copyright © 2017年 titus. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

- (void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}

- (int) area
{
    return width * height;
}

- (int) perimeter
{
    return (width + height) * 2;
}

- (void) setOrigin: (XYPoint* ) pt
{
    if (!origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

- (XYPoint *) origin
{
    return origin;
}

- (instancetype) init
{
    self = [super init];
    if (self) {
        origin = [[XYPoint alloc] init];
        origin.x = 100;
        origin.y = 200;
        width = 1000;
        height = 2000;
    }
    return self;
}

@end
