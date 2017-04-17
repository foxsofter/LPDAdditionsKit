//
//  LPDViewController.m
//  LPDAdditionsKit
//
//  Created by foxsofter on 12/02/2016.
//  Copyright (c) 2016 foxsofter. All rights reserved.
//

#import "LPDViewController.h"
#import <LPDAdditionsKit/LPDAdditionsKit.h>
#import <LPDAdditionsKit/UIView+LPDBorders.h>

@interface LPDViewController ()

@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation LPDViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)viewDidLayoutSubviews {
  [super viewDidLayoutSubviews];
  [self.testView setLineDashPattern:@[@2,@4]];
  [self.testView setBorder:1 borderColor:[UIColor redColor] borderType:LPDUIViewBorderTypeDashed];
	 
}

@end
