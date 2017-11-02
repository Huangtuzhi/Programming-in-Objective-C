//
//  SearchResultsControllerTableViewController.h
//  Sections
//
//  Created by 黄逸 on 2017/11/1.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchResultsController : UITableViewController
    <UISearchResultsUpdating>

- (instancetype)initWithNames: (NSDictionary *)names keys: (NSArray *) keys;

@end
