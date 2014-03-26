//
//  ATableViewController.h
//  protect6
//
//  Created by 林小露 on 14-3-26.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ATableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *list;


@end
