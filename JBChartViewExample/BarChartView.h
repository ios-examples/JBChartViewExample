//
//  BarChartView.h
//  motivolog
//
//  Created by Haydar Kulekci on 03/12/14.
//  Copyright (c) 2014 Haydar Kulekci. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ChartViewConstants.h"
#import "JBChartView/JBChartView.h"
#import "JBChartView/JBBarChartView.h"


@interface BarChartView: UIView <JBBarChartViewDataSource, JBBarChartViewDelegate>

@property (nonatomic, strong) NSArray *chartData;
@property (nonatomic, strong) NSArray *monthlySymbols;
@property (nonatomic, strong) JBBarChartView *barChartView;

// Data
- (void) reloadData;
- (void) initFakeData;
- (JBBarChartView *) getChartView;

@end
