//
//  BarChartView.m
//  motivolog
//
//  Created by Haydar Kulekci on 03/12/14.
//  Copyright (c) 2014 Haydar Kulekci. All rights reserved.
//

#import "BarChartView.h"
#define Data_Bar_Count 30

@implementation BarChartView

@synthesize barChartView;

-(instancetype)initWithFrame:(CGRect)frame{
    
    barChartView = [[JBBarChartView alloc] init];
    barChartView.frame = frame;
    barChartView.dataSource = self;
    barChartView.delegate = self;
    
    return self;
}

- (void)initFakeData
{
    
    NSMutableArray *mutableChartData = [NSMutableArray array];
    for (int i=0; i < Data_Bar_Count; i++)
    {
        [mutableChartData addObject:[NSNumber numberWithFloat:(i+1)%5]];
    }
    _chartData = [NSArray arrayWithArray:mutableChartData];
    _monthlySymbols = [[[NSDateFormatter alloc] init] shortMonthSymbols];
}

- (void) reloadData {
    
    [self initFakeData];
    [barChartView reloadData];
    
}

- (JBBarChartView *) getChartView {
    return barChartView;
}

#pragma mark - JBChartViewDataSource

- (BOOL)shouldExtendSelectionViewIntoHeaderPaddingForChartView:(JBChartView *)chartView
{
    return YES;
}
- (BOOL)shouldExtendSelectionViewIntoFooterPaddingForChartView:(JBChartView *)chartView
{
    return YES;
}

#pragma mark - JBBarChartViewDataSource

- (NSUInteger)numberOfBarsInBarChartView:(JBBarChartView *)barChartView
{
    return Data_Bar_Count; // number of bars in chart
}

- (CGFloat)barChartView:(JBBarChartView *)barChartView heightForBarViewAtIndex:(NSUInteger)index
{
    return [[self.chartData objectAtIndex:index] floatValue];
}

#pragma mark - JBBarChartViewDelegate

- (UIColor *)barSelectionColorForBarChartView:(JBBarChartView *)barChartView
{
    return [UIColor whiteColor];
}

- (CGFloat)barPaddingForBarChartView:(JBBarChartView *)barChartView
{
    return 2.0f;
}

- (UIColor *)barChartView:(JBBarChartView *)barChartView colorForBarViewAtIndex:(NSUInteger)index
{
    return (index % 2 == 0) ? kJBColorBarChartBarBlue : kJBColorBarChartBarGreen;
}


@end
