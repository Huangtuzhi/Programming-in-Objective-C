//
//  main.m
//  test_detegate
//
//  Created by 黄逸 on 2017/10/11.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "mother.h"
#import "father.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        mother *mot = [[mother alloc] init];
//        id<setProtocol> detegate = [[father alloc] init];
//        mot.detegate = detegate;
        [mot haveARest];
    }
    return 0;
}
