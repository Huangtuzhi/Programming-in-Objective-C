//
//  Rectangle.h
//  prog1
//
//  Created by titus on 2017/9/12.
//  Copyright © 2017年 titus. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

@property int width, height;
- (int) area;
- (int) perimeter;
- (void) setWidth: (int) w andHeight: (int) h;

- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;

@end
