//
//  SWAppDelegate.h
//  SimpleWeather
//
//  Created by Anh Tuan on 2/21/16.
//  Copyright (c) 2016 Nguyen Van Anh Tuan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    WEATHER_BROKEN = 1,
    WEATHER_CLEAR,
    WEATHER_FEW_NIGHT,
    WEATHER_FEW,
    WEATHER_MIST,
    WEATHER_MOON,
    WEATHER_RAIN_NIGHT,
    WEATHER_RAIN,
    WEATHER_SCATTERED,
    WEATHER_SHOWER,
    WEATHER_SNOW,
    WEATHER_TSTORM,
    
} WEATHER_STATE;
@interface SWAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
