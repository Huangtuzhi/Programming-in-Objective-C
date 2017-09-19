//
//  AddressBook.h
//  pro2
//
//  Created by titus on 2017/9/19.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

- (instancetype) initWithName: (NSString *) name;
- (void) addCard: (AddressCard *) theCard;
- (int) entries;
- (void) list;

- (AddressCard *) lookup: (NSString *) theName;
- (void) removeCard: (AddressCard *) theCard;
- (void) sort;

@end
