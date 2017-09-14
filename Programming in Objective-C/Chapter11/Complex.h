//
//  Complex.h
//  prog1
//
//  Created by titus on 2017/9/12.
//  Copyright © 2017年 titus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

- (void) print;
- (void) setReal: (double) a andImaginary: (double) b;
- (Complex *) add: (Complex *) f;

@end
