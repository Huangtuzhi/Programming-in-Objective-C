//
//  AddressBook.m
//  pro2
//
//  Created by titus on 2017/9/19.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

- (instancetype) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype) init
{
    return [self initWithName: @"NoName"];
}

- (void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}

- (int) entries
{
    return (int)[book count];
}

- (void) list
{
    NSLog(@"======== Contents of: %@ ===========", bookName);
    
    for (AddressCard *theCard in book)
        NSLog(@"%-20s %-32s", [theCard.name UTF8String],
              [theCard.email UTF8String]);
    NSLog(@"====================================");
}

- (AddressCard *) lookup: (NSString *) theName
{
    for ( AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    
    return nil;
}

- (void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}

- (void) sort
{
    [book sortUsingComparator:
     ^(id obj1, id obj2) {
         return [[obj1 name] compare: [obj2 name]];
     }];
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
    [encoder encodeObject: bookName forKey: @"AddressBookName"];
    [encoder encodeObject: book forKey: @"AddressBossEmail"];
}

- (id) initWithCoder: (NSCoder *) decoder
{
    bookName = [decoder decodeObjectForKey: @"AddressBookName"];
    book = [decoder decodeObjectForKey: @"AddressBookEmail"];
    
    return self;
}

@end
