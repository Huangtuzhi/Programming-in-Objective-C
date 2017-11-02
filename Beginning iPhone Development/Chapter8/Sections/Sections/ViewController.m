//
//  ViewController.m
//  Sections
//
//  Created by 黄逸 on 2017/11/1.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "ViewController.h"
#import "SearchResultsController.h"

static NSString *SectionsTableIdentifier = @"SectionsTableIdentifier";

@interface ViewController ()

@property (copy, nonatomic) NSDictionary *names;
@property (copy, nonatomic) NSArray *keys;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UISearchController *searchController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: SectionsTableIdentifier];
    NSString *path = [[NSBundle mainBundle] pathForResource: @"sortednames" ofType: @"plist"];
    self.names = [NSDictionary dictionaryWithContentsOfFile: path];
    self.keys = [[self.names allKeys] sortedArrayUsingSelector: @selector(compare:)];
    
    SearchResultsController *resultController = [[SearchResultsController alloc] initWithNames: self.names keys: self.keys];
    self.searchController = [[UISearchController alloc] initWithSearchResultsController: resultController];
    
    UISearchBar *searchBar = self.searchController.searchBar;
    searchBar.scopeButtonTitles = @[@"ALL", @"Short", @"Long"];
    searchBar.placeholder = @"Search";
    [searchBar sizeToFit];
    self.tableView.tableHeaderView = searchBar;
    self.searchController.searchResultsUpdater = resultController;
    
    self.tableView.sectionIndexBackgroundColor = [UIColor blackColor];
    self.tableView.sectionIndexTrackingBackgroundColor = [UIColor darkGrayColor];
    self.tableView.sectionIndexColor = [UIColor whiteColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.keys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = self.keys[section];
    NSArray *nameSection = self.names[key];
    return [nameSection count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.keys[section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 判断是有空闲的cell，有进行重用，没有就创建一个
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SectionsTableIdentifier forIndexPath: indexPath];
    
    // indexPath 有 section 和 row 信息，就是两个 int
    NSString *key = self.keys[indexPath.section];
    NSArray *nameSection = self.names[key];
    
    cell.textLabel.text = nameSection[indexPath.row];
    return cell;
}

- (NSArray *)sectionIndexTitlesForTableView: (UITableView*) tableView {
    return self.keys;
}

@end
