//
//  main.m
//  pro2
//
//  Created by titus on 2017/9/19.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *bName = @"tuzhi";
        NSString *bEmail = @"ituzhi@163.com";
        
        NSString *aName = @"jiahai";
        NSString *aEmail = @"jiahai@163.com";
        
        NSString *cName = @"zhiyin";
        NSString *cEmail = @"zhiyin@163.com";
        
        AddressCard *card1 = [[AddressCard alloc ]init];
        AddressCard *card2 = [[AddressCard alloc ]init];
        AddressCard *card3 = [[AddressCard alloc ]init];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"titus's Address Book"];
        
        NSLog(@"Entries in address book after creation: %i", [myBook entries]);
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        
        [myBook addCard: card1];
        [myBook addCard: card3];
        [myBook addCard: card2];
        
        NSLog(@"Entries in address book after creation: %i", [myBook entries]);
        
        [myBook list];
        
        // 通过名字查找一个人
        AddressCard *queryCard = [myBook lookup: @"tuzhi"];
        
        if (queryCard != nil)
            [queryCard print];
        else
            NSLog(@"Not Fount");
        
        // 删除一个人
//        [myBook removeCard: queryCard];
        NSLog(@"------Before Sort------");
        [myBook list];
        
        NSLog(@"------After Sort-------");
        [myBook sort];
        [myBook list];
        
    }
    return 0;
}
