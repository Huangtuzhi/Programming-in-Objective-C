//
//  mother.m
//  test_detegate
//
//  Created by 黄逸 on 2017/10/11.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "mother.h"

@implementation mother
@synthesize detegate;

- (NSString*) maicai {
    return @"买菜\n";
}

- (NSString*) xiyifu {
    return @"洗衣服\n";
}

- (NSString*) zuofan {
    return @"做饭\n";
}

- (void) haveARest {
    id<setProtocol> new_detegate = [[father alloc] init];
    detegate = new_detegate;
	[detegate shangban];
}

@end
