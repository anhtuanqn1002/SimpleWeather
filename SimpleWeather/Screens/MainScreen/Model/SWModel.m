//
//  SWModel.m
//  SimpleWeather
//
//  Created by Anh Tuan on 2/21/16.
//  Copyright (c) 2016 Nguyen Van Anh Tuan. All rights reserved.
//

#import "SWModel.h"

@interface SWModel ()

@end

@implementation SWModel

- (instancetype)init {
    if (self = [super init]) {
        self.state = WEATHER_CLEAR;
        self.time = [NSDate date];
        self.temperature = 0;
        self.minTemperature = 0;
        self.maxTemperature = 30;
    }
    return self;
}

- (instancetype)initWithModel:(SWModel *)model {
    if (self = [super init]) {
        self.state = model.state;
        self.time = model.time;
        self.temperature = model.temperature;
        self.minTemperature = model.minTemperature;
        self.maxTemperature = model.maxTemperature;
    }
    return self;
}

@end
