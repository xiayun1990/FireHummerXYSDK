//
//  TestViewViewController.m
//  GameTwo
//
//  Created by mac on 2020/6/22.
//

#import "TestViewViewController.h"
//#import "FNYFMoPubTool.h"
//#import "HummerAppleLogin.h"
//#import <Fabric/Fabric.h>
//#import <FirebaseCrashlytics/FirebaseCrashlytics.h>
//#import "HummerUPSDK.h"
@interface TestViewViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation TestViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [FNYFMoPubTool initHummerUPSDK:123456];
    [self.view addSubview:self.tableView];
    [self.tableView reloadData];
}


- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *text = @"";
    if (indexPath.row == 0) {
        text = @"load插页";
    }else if (indexPath.row == 1){
        text = @"显示插页";
    }else if (indexPath.row == 2){
        text = @"load视频激励";
    }else if (indexPath.row == 3){
        text = @"显示视频激励";
    }else if (indexPath.row == 4){
        text = @"测试苹果登录";
    }else if (indexPath.row == 5){
        text = @"奔溃测试";
    }else{
        text = [NSString stringWithFormat:@"Cell %ld", indexPath.row];
    }
    cell.textLabel.text = text;
    
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.row == 0) {
//        [FNYFMoPubTool initHummerUPSDK:22222];
//        [FNYFMoPubTool loadInterstitialAdByName:nil];
//    }else if (indexPath.row == 1){
//        [FNYFMoPubTool showInterstitialAdByName:nil];
//
//    }else if (indexPath.row == 2){
//        [FNYFMoPubTool loadRewardedAd];
//    }else if (indexPath.row == 3){
//        [FNYFMoPubTool showRewardedAdByName:nil];
//    }else if (indexPath.row == 4){
////        [[HummerAppleLogin getInstance] initAppleLogin];
////        [[HummerAppleLogin getInstance] authorizationAppleID];
//    }else if (indexPath.row == 5){
//           NSArray *arr = [[NSArray alloc] init];
//            NSString *bugOne = [arr objectAtIndex:5];
//
//    }else if (indexPath.row == 6){
//
//    }else if (indexPath.row == 7){
//
//    }else if (indexPath.row == 8){
//
//    }
}
////game2
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.row == 0) {
//        [FNYFMoPubTool loadInterstitialAdByName:@"389894"];
//    }else if (indexPath.row == 1){
//        BOOL isloaded = [FNYFMoPubTool isInterstitialAdLoadedByName:@"389894"];
//        if (isloaded) {
//            [FNYFMoPubTool showInterstitialAdByName:@"389894"];
//        }else{
//            NSLog(@"不能播放插页广告");
//        }
//
//    }else if (indexPath.row == 2){
//        [FNYFMoPubTool loadRewardedAd];
//    }else if (indexPath.row == 3){
//        BOOL isLoaded = [FNYFMoPubTool isRewardedAdLoaded];
//        if (isLoaded) {
//            [FNYFMoPubTool showRewardedAdByName:@"893443"];
//        }else{
//            NSLog(@"不能播放奖励视频");
//        }
//    }else if (indexPath.row == 4){
//        [[HummerAppleLogin getInstance] initAppleLogin];
//        [[HummerAppleLogin getInstance] authorizationAppleID];
//    }else if (indexPath.row == 5){
//           NSArray *arr = [[NSArray alloc] init];
//            NSString *bugOne = [arr objectAtIndex:5];
//
//    }else if (indexPath.row == 6){
//
//    }else if (indexPath.row == 7){
//
//    }else if (indexPath.row == 8){
//
//    }
//}
@end
