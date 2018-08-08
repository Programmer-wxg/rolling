//
//  SecondViewController.m
//  自动滚动的Label
//
//  Created by xhkj on 2018/8/7.
//  Copyright © 2018年 WXG. All rights reserved.
//

#import "SecondViewController.h"
#import "CBAutoScrollLabel.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet CBAutoScrollLabel *scrollerLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollerLabel.text = @"这是一个滚动的Label，This is a Label that is rolling.";
    self.scrollerLabel.textColor = [UIColor blueColor];
    self.scrollerLabel.backgroundColor = [UIColor clearColor];
    self.scrollerLabel.labelSpacing = 30; // distance between start and end labels
    self.scrollerLabel.pauseInterval = 1.7; // seconds of pause before scrolling starts again
    self.scrollerLabel.scrollSpeed = 30; // pixels per second
    self.scrollerLabel.textAlignment = NSTextAlignmentCenter; // centers text when no auto-scrolling is applied
    self.scrollerLabel.fadeLength = 12.f;
    self.scrollerLabel.scrollDirection = CBAutoScrollDirectionLeft;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
