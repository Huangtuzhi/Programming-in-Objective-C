//
//  AddressCard.h
//  pro2
//
//  Created by titus on 2017/9/19.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCoding, NSCopying>

@property (copy, nonatomic) NSString *name, *email;

//- (void) setName: (NSString*) theName;
//- (void) setEmail: (NSString*) theEmail;
//
//- (NSString*) name;
//- (NSString*) email;

- (void) setName: (NSString*) theName andEmail: (NSString*) theEmail;

- (void) print;

- (NSComparisonResult) compareNames: (id) element;

@end
