//
//  ViewController.m
//  ReactiveObjCDemo
//
//  Created by 马棠丰 on 2017/12/26.
//  Copyright © 2017年 未知. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "ResponseToolClass.h"

@interface ViewController ()
@property (nonatomic , strong) ResponseToolClass * toolClass;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    __block NSUInteger integerA;
    
    [self.toolClass results:^(NSUInteger integerB, NSUInteger integerC) {
        integerA = integerB + integerC;
        NSLog(@"%ld",integerA);
    }];
};

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSUInteger integerB = arc4random() % 101;
    NSUInteger integerC = arc4random() % 10;
    [self.toolClass addIntegerB:integerB integerC:integerC];
}

- (ResponseToolClass *)toolClass{
    if (!_toolClass) {
        _toolClass = [[ResponseToolClass alloc] init];
    }
    return _toolClass;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
