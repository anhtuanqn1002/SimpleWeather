//
//  SWTableViewCell.h
//  SimpleWeather
//
//  Created by Anh Tuan on 2/21/16.
//  Copyright (c) 2016 Nguyen Van Anh Tuan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SWModel;
@interface SWTableViewCell : UITableViewCell
- (void)setDateWithModel:(SWModel *)model andSection:(NSInteger)section;
@end
