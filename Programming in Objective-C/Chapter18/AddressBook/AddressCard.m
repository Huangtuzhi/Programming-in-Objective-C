//
//  AddressCard.m
//  pro2
//
//  Created by titus on 2017/9/19.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

//@implementation AddressCard
//{
//    NSString *name;
//    NSString *email;
//}

//- (void) setName: (NSString*) theName
//{
//    if (name != theName)
//        name = [NSString stringWithString: theName];
//}
//
//- (void) setEmail: (NSString*) theEmail
//{
//    if (email != theEmail)
//        email = [NSString stringWithString: theEmail];
//}
//
//- (NSString*) name
//{
//    return name;
//}
//
//- (NSString *) email
//{
//    return email;
//}

- (void) setName: (NSString*) theName andEmail: (NSString*) theEmail
{
    self.name = theName;
    self.email = theEmail;
}

- (void) print
{
    NSLog(@"%-31s", [name UTF8String]);
    NSLog(@"%-31s", [email UTF8String]);
}

- (NSComparisonResult) compareNames: (id) element
{
//    return [name compare: [element name]];
    return [[element name] compare: name];
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
    [encoder encodeObject: name forKey: @"AddressCardName"];
    [encoder encodeObject: email forKey: @"AddressCardEmail"];
}

- (id) initWithCoder: (NSCoder *) decoder
{
    name = [decoder decodeObjectForKey: @"AddressCardName"];
    email = [decoder decodeObjectForKey: @"AddressCardEmail"];
    
    return self;
}

@end
