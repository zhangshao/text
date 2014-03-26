//
//  ATableViewController.m
//  protect6
//
//  Created by 林小露 on 14-3-26.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import "ATableViewController.h"

@interface ATableViewController ()

@end

@implementation ATableViewController
@synthesize list = _list;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSArray *array = [[NSArray alloc]initWithObjects:@"zhongguo",@"meiguo",@"riben",@"aodaliya",@"malaixiya",@"hanguo",@"yuenan",@"yingguo",@"eluosi",@"lasa", nil];
    self.list = array;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *TableSampleIdentifier = @"TableSampleIdentifiet";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableSampleIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableSampleIdentifier];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [self.list objectAtIndex:row];
    return cell;
    
}
@end
