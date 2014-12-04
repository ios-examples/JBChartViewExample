//
//  ViewController.m
//  JBChartViewExample
//
//  Created by Haydar Kulekci on 04/12/14.
//  Copyright (c) 2014 Haydar Kulekci. All rights reserved.
//

#import "ViewController.h"
#import "BarChartView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *BarChart;

@end

@implementation ViewController
@synthesize BarChart;

- (void)viewDidLoad {
    [super viewDidLoad];
    [BarChart.subviews makeObjectsPerformSelector: @selector(removeFromSuperview)];
    
    BarChartView *exampleBarChartView = [[BarChartView alloc] initWithFrame:
                                         CGRectMake(
                                                    20.0f, // LEFT
                                                    40.0f, // TOP
                                                    BarChart.bounds.size.width - (20.0f * 2), // WIDTH
                                                    70.0f // HEIGHT
                                                    )
                                         ];
    
    [BarChart addSubview:[exampleBarChartView getChartView]];
    
    [exampleBarChartView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
