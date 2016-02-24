//
//  SWViewController.m
//  SimpleWeather
//
//  Created by Anh Tuan on 2/21/16.
//  Copyright (c) 2016 Nguyen Van Anh Tuan. All rights reserved.
//

#import "SWViewController.h"
#import "SWTableViewCell.h"
#import "SWModel.h"
#import "SWAppDelegate.h"

@interface SWViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UIView *firstView;
@property (strong, nonatomic) IBOutlet UITableView *secondView;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *temperature;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UILabel *dailyTeperature;
@property (weak, nonatomic) IBOutlet UIImageView *statusImage;

@property (nonatomic, strong) NSMutableArray *hourlyForecast;
@property (nonatomic, strong) NSMutableArray *dailyForecast;
@end

@implementation SWViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.hourlyForecast = [NSMutableArray new];
    self.dailyForecast  = [NSMutableArray new];
    
    for (NSInteger i = 0; i < 7; i++) {
        SWModel *model = [[SWModel alloc] init];
        [self.hourlyForecast addObject:model];
        [self.dailyForecast addObject:model];
    }
    
    [self setupData];
    [self.secondView registerNib:[UINib nibWithNibName:@"SWTableViewCell" bundle:nil] forCellReuseIdentifier:@"SWTableViewCell"];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    self.firstView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.secondView.tableHeaderView = self.firstView;
    self.secondView.frame = CGRectMake(0, self.firstView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);

}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)setupData {
    self.location.text = @"New York";
    self.status.text = @"Rain";
    self.statusImage.image = [UIImage imageNamed:@"weather-rain.png"];
    self.temperature.text = @"32°";
    self.dailyTeperature.text = @"50°/32°";
}

#pragma mark - Tableview datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SWTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SWTableViewCell" forIndexPath:indexPath];
    if (indexPath.section == 0) {
        [cell setDateWithModel:[self.hourlyForecast objectAtIndex:indexPath.row] andSection:0];
    } else {
        [cell setDateWithModel:[self.dailyForecast objectAtIndex:indexPath.row] andSection:1];
    }
    return cell;
}

#pragma mark - Tableview delegate

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Hourly Forecast";
    } else {
        return @"Daily Forecast";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 44;
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    UITableViewHeaderFooterView *v = (UITableViewHeaderFooterView *)view;
    v.backgroundView.backgroundColor = [UIColor clearColor];
    [v.textLabel setTextColor:[UIColor whiteColor]];
}

@end
