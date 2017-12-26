//
//  responseToolClass.h
//  ReactiveObjCDemo
//
//  Created by 马棠丰 on 2017/12/26.
//  Copyright © 2017年 未知. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^responseBlock)(NSUInteger integerB , NSUInteger integerC);

@interface ResponseToolClass : NSObject
- (void)addIntegerB:(NSUInteger)integerB integerC:(NSUInteger)integerC;
- (void)results:(responseBlock)response;
@end
