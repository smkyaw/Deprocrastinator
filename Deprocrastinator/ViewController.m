//
//  ViewController.m
//  Deprocrastinator
//
//  Created by Heidi Kyaw on 1/12/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
//TEXT ARRAY
@property NSMutableArray *toDoListArray;

//TEXT STRINGS
@property NSString *a;
@property NSString *b;
@property NSString *c;
@property NSString *d;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.toDoListArray = [NSMutableArray arrayWithObjects:@"a", ni
    
    self.toDoListArray = [NSMutableArray arrayWithObjects: self.a, self.b, self.c, self.d, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
- (IBAction)onAddButtonPressed:(id)sender
{
    
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"ColorCellID"];
    //  cell.textLabel.text = [NSString stringWithFormat:@"row: %li",(long) indexPath.row];
    
    self.textField = [self.toDoListArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
