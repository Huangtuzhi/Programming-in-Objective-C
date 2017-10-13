//
//  mother.h
//  test_detegate
//
//  Created by 黄逸 on 2017/10/11.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "setProtocol.h"
#import "father.h"

@interface mother : NSObject

@property(nonatomic, retain) id <setProtocol> detegate;

- (NSString*) maicai;

- (NSString*) xiyifu;

- (NSString*) zuofan;

- (void) haveARest;

@end
