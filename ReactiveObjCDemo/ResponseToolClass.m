//
//  responseToolClass.m
//  ReactiveObjCDemo
//
//  Created by 马棠丰 on 2017/12/26.
//  Copyright © 2017年 未知. All rights reserved.
//

#import "ResponseToolClass.h"

@interface ResponseToolClass ()
@property (nonatomic , strong) void(^saveResponseBlock)(NSUInteger integerB , NSUInteger integerC);
@end

@implementation ResponseToolClass

- (void)addIntegerB:(NSUInteger)integerB integerC:(NSUInteger)integerC{
    self.saveResponseBlock(integerB, integerC);
}

- (void)results:(responseBlock)response{
    self -> _saveResponseBlock = [response copy];
}

@end
