//
//  Fraction.h
//  prog1
//
//  Created by titus on 2017/9/11.
//  Copyright © 2017年 titus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject <NSCopying>

@property int numerator, denominator;

- (void) print;

- (void) setTo: (int) n over: (int) d;

//- (void) add: (Fraction *) f;

- (Fraction *) add2: (Fraction *) f;

- (void) reduce;

- (Fraction *) initWith: (int) n over: (int) d;

- (instancetype) init;

+ (Fraction *) allocF;

+ (int) count;

@end
