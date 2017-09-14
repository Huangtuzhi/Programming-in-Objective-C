//
//  FractionMathOps.h
//  prog1
//
//  Created by titus on 2017/9/14.
//  Copyright © 2017年 titus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Fraction (MathOps)
- (Fraction*) add: (Fraction *) f;
- (Fraction*) mul: (Fraction *) f;
- (Fraction*) sub: (Fraction *) f;
- (Fraction*) div: (Fraction *) f;
@end
