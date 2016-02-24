//
//  SWModel.h
//  SimpleWeather
//
//  Created by Anh Tuan on 2/21/16.
//  Copyright (c) 2016 Nguyen Van Anh Tuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SWAppDelegate.h"

@interface SWModel : NSObject

@property (nonatomic, assign) WEATHER_STATE state;
@property (nonatomic, strong) NSDate *time;
@property (nonatomic, assign) NSInteger temperature;
@property (nonatomic, assign) NSInteger minTemperature;
@property (nonatomic, assign) NSInteger maxTemperature;

- (instancetype)initWithModel:(SWModel *)model;
@end
