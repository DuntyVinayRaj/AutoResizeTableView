//
//  ViewController.m
//  VariableCellTableView
//
//  Created by Vinay Raj on 19/06/14.
//  Copyright (c) 2014 Vinay Raj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tblVariableSize;
@property (nonatomic, retain)NSMutableArray *sampleTexts;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.sampleTexts = [[NSMutableArray alloc]init];
    
    [self.sampleTexts addObject:@"We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations."];
    
    
    [self.sampleTexts addObject:@"We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations.We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations."];
    
    
        [self.sampleTexts addObject:@"We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations.We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations.We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations.We've worked with numerous startups and large companies. Our founders, designers and engineers have worked on complex stuff like Database B Trees, Document Management Systems, Compilers, Security Systems, Operating Systems, Video Platforms, Telecom Switches, and Enterprise Applications. Now, we are helping startups realize their product dreams and making CIOs heroes in their respective organizations."];
    
    
    [self.sampleTexts addObject:@"We've worked with numerous startups and large companies."];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma table view delegates

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.sampleTexts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"samplecell"];
    cell.textLabel.text = self.sampleTexts[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:18];
    cell.textLabel.numberOfLines = 0;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

        NSString *text = self.sampleTexts[indexPath.row];
        CGSize constraint = CGSizeMake(300, 2000.0f);
    CGRect height;
    
    height = [text boundingRectWithSize:constraint options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18]} context:nil];
    
        CGFloat Maxheight = MAX(height.size.height, 44);
        return Maxheight + 20;
}

@end
