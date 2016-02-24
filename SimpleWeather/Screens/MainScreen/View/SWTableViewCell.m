//
//  SWTableViewCell.m
//  SimpleWeather
//
//  Created by Anh Tuan on 2/21/16.
//  Copyright (c) 2016 Nguyen Van Anh Tuan. All rights reserved.
//

#import "SWTableViewCell.h"
#import "SWModel.h"

@interface SWTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *stateImaged;
@property (weak, nonatomic) IBOutlet UILabel *titleCell;
@property (weak, nonatomic) IBOutlet UILabel *infomationCell;

@end

@implementation SWTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setDateWithModel:(SWModel *)model andSection:(NSInteger)section {
    if (section == 1) {
        self.titleCell.text = @"Monday";
        self.infomationCell.text = [NSString stringWithFormat:@"%ld°/%ld°",(long)model.minTemperature, (long)model.maxTemperature];
    } else {
        self.titleCell.text = @"1 PM";
        self.infomationCell.text = [NSString stringWithFormat:@"%ld°",(long)model.temperature];
    }
    switch (model.state) {
        case WEATHER_BROKEN:
            self.stateImaged.image = [UIImage imageNamed:@"weather-broken.png"];
            break;
        case WEATHER_CLEAR:
            self.stateImaged.image = [UIImage imageNamed:@"weather-clear.png"];
            break;
        case WEATHER_FEW_NIGHT:
            self.stateImaged.image = [UIImage imageNamed:@"weather-few-night.png"];
            break;
        case WEATHER_FEW:
            self.stateImaged.image = [UIImage imageNamed:@"weather-few.png"];
            break;
        case WEATHER_MIST:
            self.stateImaged.image = [UIImage imageNamed:@"weather-mist.png"];
            break;
        case WEATHER_MOON:
            self.stateImaged.image = [UIImage imageNamed:@"weather-moon.png"];
            break;
        case WEATHER_RAIN:
            self.stateImaged.image = [UIImage imageNamed:@"weather-rain.png"];
            break;
        case WEATHER_RAIN_NIGHT:
            self.stateImaged.image = [UIImage imageNamed:@"weather-rain-night.png"];
            break;
        case WEATHER_SCATTERED:
            self.stateImaged.image = [UIImage imageNamed:@"weather-scattered.png"];
            break;
        case WEATHER_SHOWER:
            self.stateImaged.image = [UIImage imageNamed:@"weather-shower.png"];
            break;
        case WEATHER_SNOW:
            self.stateImaged.image = [UIImage imageNamed:@"weather-snow.png"];
            break;
        case WEATHER_TSTORM:
            self.stateImaged.image = [UIImage imageNamed:@"weather-tstorm.png"];
            break;
    }
}

@end
