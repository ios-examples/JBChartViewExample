//
//  ChartViewConstants.h
//  motivolog
//
//  Created by Haydar Kulekci on 03/12/14.
//  Copyright (c) 2014 Haydar Kulekci. All rights reserved.
//

#ifndef motivolog_ChartViewConstants_h
#define motivolog_ChartViewConstants_h

#define UIColorFromHex(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]

#define kJBColorBarChartBarBlue UIColorFromHex(0x08bcef)
#define kJBColorBarChartBarGreen UIColorFromHex(0x34b234)

#endif
