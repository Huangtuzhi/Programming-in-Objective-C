//
//  main.m
//  prog1
//
//  Created by titus on 2017/9/7.
//  Copyright © 2017年 titus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
//#import "Rectangle.h"
//#import "Square.h"
//#import "XYPoint.h"
//#import "Complex.h"
//#include "FractionMathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        void (^printMessage)(void) =
//            ^(void){
//                NSLog(@"Programming is fun.");
//            };
//    
//        printMessage();
        
//        NSNumber * longNumber, *floatNumer, *intNumber;
//        NSInteger myInt;
//        
//        // interger 型值
//        intNumber = [NSNumber numberWithInteger: 100];
//        myInt = [intNumber integerValue];
//        NSLog(@"%@", intNumber);
//        
//        // long 型值
//        longNumber = [NSNumber numberWithLong: 0xaddcdf];
//        NSLog(@"%lx", [longNumber longValue]);
        
//        NSLog(@"Fractions allopcated: %i", [Fraction count]);
//        Fraction* myFraction1 = [[Fraction allocF] init];
//        Fraction* myFraction2 = [[Fraction allocF] init];
//        Fraction* myFraction3 = [[Fraction allocF] init];
//
//        NSLog(@"Fractions allopcated: %i", [Fraction count]);
//        
//        [myFraction1 setTo:30 over:20];
//        [myFraction2 setTo:40 over:30];
//        
//        Fraction* result = [myFraction1 add: myFraction2];
//        [result print];
        
//        int Fibo[15], i;
//        Fibo[0] = 0;
//        Fibo[1] = 1;
//        
//        for ( i = 2; i < 15; i++ )
//            Fibo[i] = Fibo[i - 2] + Fibo[i - 1];
//        
//        for ( i =0; i < 15; ++i )
//            NSLog(@"%i", Fibo[i]);
        
//        Fraction* ret = [myFraction1 add2: myFraction2];
//        
//        [ret print];
        
        
        
//        Rectangle * myRect = [[Rectangle alloc] init];
//        XYPoint * myPoint = [[XYPoint alloc] init];
        
//        [myRect setWidth: 5 andHeight: 2];
//        [myPoint setX:100 andY:200];
        
//        myRect.origin = myPoint;

//        NSLog(@"Rectangle: w=%i, h=%i", myRect.width, myRect.height);
//        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
//        [myPoint setX:50 andY:100];
//        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        
//        Square * mySquare = [[Square alloc] init];
//        [mySquare setSide:5];
//        NSLog(@"Square: s=%i", [mySquare side]);
//        NSLog(@"Area=%i, perimeter=%i", [mySquare area], [mySquare perimeter]);
        
//        Fraction * f1 = [[Fraction alloc] init];
//        Fraction * f2 = [[Fraction alloc] init];
//        Fraction * fracResult;
//        
//        [f1 setTo: 1 over: 10];
//        [f2 setTo: 2 over: 15];
//        fracResult = [f1 add2: f2];
//        NSLog(@"The sum if %@ and %@ is %@", f1, f2, fracResult);
        
        
//        NSArray *monthNames = @[@"Jan", @"Feb", @"March"];
//        int i;
//        for (i = 0; i < 3; ++i)
//            NSLog(@" %2i %@", i + 1, moithnthNames[i]);
        
//        [fracResult print];
//        
//        Complex * c1 = [[Complex alloc] init];
//        Complex * c2 = [[Complex alloc] init];
//        Complex * compResult;
//        
//        [c1 setReal: 18.0 andImaginary: 2.5];
//        [c2 setReal: -5 andImaginary: 3.2];
//        compResult = [c1 add: c2];
//        [compResult print];
        
//        id dataValue;
//        Fraction * f1 = [[Fraction alloc] init];
//        Complex * c1 = [[Complex alloc] init];
//        
//        [f1 setTo:2 over: 5];
//        [c1 setReal: 10.0 andImaginary: 2.5];
//        
//        [c1 print];
//        
//        Square * mySquare = [[Square alloc] init];
//        
//        // isMemberOf
//        if ([mySquare isMemberOfClass: [Square class]] == YES)
//            NSLog(@"mySquare is a member of Square class");
//        
//        if ([mySquare isMemberOfClass: [Rectangle class]] == YES)
//            NSLog(@"mySquare is a member of Rectangle class");
//        
//        // isKindOf
//        if ([mySquare isKindOfClass: [Square class]] == YES)
//            NSLog(@"mySquare is a kind of Square class");
//        
//        if ([mySquare isKindOfClass: [NSObject class]] == YES)
//            NSLog(@"mySquare is a kind of NSObject class");
//        
//        // respondsTo
//        if ([mySquare respondsToSelector: @selector(setSide:)] == YES)
//            NSLog(@"mySquare respond to setSide: method");
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2;
        
        [f1 setTo: 2 over: 5];
        f2 = [f1 copy];
        
        [f2 setTo: 1 over: 9];
        
        [f1 print];
        
        [f2 print];
        
    }
    
    return 0;
}
