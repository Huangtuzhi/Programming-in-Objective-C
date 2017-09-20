//
//  Fraction.m
//  prog1
//
//  Created by titus on 2017/9/11.
//  Copyright © 2017年 titus. All rights reserved.
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction

@synthesize numerator, denominator;

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

//- (void) add: (Fraction *) f
//{
//    numerator = numerator * f.denominator + denominator*f.numerator;
//    denominator = denominator * f.denominator;
//    
//    [self reduce];
//}

- (Fraction *) add2: (Fraction *) f
{
    Fraction * ret = [[Fraction alloc] init];
    ret.numerator = numerator * f.denominator + denominator*f.numerator;
    ret.denominator = denominator * f.denominator;
    [ret reduce];
    return ret;
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

- (Fraction *) initWith: (int) n over: (int) d
{
    self = [super init];
    if (self)
        [self setTo: n over: d];
    return self;
}

- (instancetype) init
{
    return [self initWith: 1 over: 2];
}

+ (Fraction *) allocF
{
    ++gCounter;
    return [Fraction alloc];
}

+ (int) count
{
    return gCounter;
}

- (NSString *) description
{
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

- (id) copyWithZone: (NSZone *) zone
{
    Fraction *newFract = [[Fraction allocWithZone: zone] init];
    
    [newFract setTo: numerator over: denominator];
    return newFract;
}

@end
