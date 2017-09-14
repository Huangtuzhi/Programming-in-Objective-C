//
//  FractionMathOps.m
//  prog1
//
//  Created by titus on 2017/9/14.
//  Copyright © 2017年 titus. All rights reserved.
//

#import "FractionMathOps.h"

@implementation Fraction (MathOps)
- (Fraction *) add: (Fraction*) f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

@end
