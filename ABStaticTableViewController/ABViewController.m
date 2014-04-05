//
//  ABViewController.m
//  ABStaticTableViewController
//
//  Created by Антон Буков on 05.04.14.
//  Copyright (c) 2014 Codeless Solutions. All rights reserved.
//

#import "ABViewController.h"

#define ConstIndexPath1 [NSIndexPath indexPathForRow:1 inSection:2]
#define ConstIndexPath2 [NSIndexPath indexPathForRow:3 inSection:2]
#define ConstSection 1

@interface ABViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *animatedSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;
@property (weak, nonatomic) IBOutlet UISwitch *switch3;
@end

@implementation ABViewController


- (IBAction)showHideSection:(UISwitch *)sender
{
    if (!self.animatedSwitch.on) {
        if (sender.on)
            [self insertSections:[NSIndexSet indexSetWithIndex:ConstSection]];
        else
            [self deleteSections:[NSIndexSet indexSetWithIndex:ConstSection]];
        [self.tableView reloadData];
        return;
    }
    
    if (sender.on)
        [self insertSections:[NSIndexSet indexSetWithIndex:ConstSection] withRowAnimation:(UITableViewRowAnimationFade)];
    else
        [self deleteSections:[NSIndexSet indexSetWithIndex:ConstSection] withRowAnimation:(UITableViewRowAnimationFade)];
}

- (IBAction)showHideRow1:(UISwitch *)sender
{
    if (!self.animatedSwitch.on) {
        if (sender.on)
            [self insertRowsAtIndexPaths:@[ConstIndexPath1]];
        else
            [self deleteRowsAtIndexPaths:@[ConstIndexPath1]];
        [self.tableView reloadData];
        return;
    }
    
    if (sender.on)
        [self insertRowsAtIndexPaths:@[ConstIndexPath1] withRowAnimation:(UITableViewRowAnimationFade)];
    else
        [self deleteRowsAtIndexPaths:@[ConstIndexPath1] withRowAnimation:(UITableViewRowAnimationFade)];
}

- (IBAction)showHideRow2:(UISwitch *)sender
{
    if (!self.animatedSwitch.on) {
        if (sender.on)
            [self insertRowsAtIndexPaths:@[ConstIndexPath2]];
        else
            [self deleteRowsAtIndexPaths:@[ConstIndexPath2]];
        [self.tableView reloadData];
        return;
    }
    
    if (sender.on)
        [self insertRowsAtIndexPaths:@[ConstIndexPath2] withRowAnimation:(UITableViewRowAnimationFade)];
    else
        [self deleteRowsAtIndexPaths:@[ConstIndexPath2] withRowAnimation:(UITableViewRowAnimationFade)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
