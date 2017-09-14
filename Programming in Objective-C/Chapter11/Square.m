//
//  Square.m
//  prog1
//
//  Created by titus on 2017/9/12.
//  Copyright © 2017年 titus. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

- (void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

- (int) side
{
    return self.width;
}

@end
