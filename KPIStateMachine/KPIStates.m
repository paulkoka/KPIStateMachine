//
//  KPIStates.m
//  KPIStateMachine
//
//  Created by Pavel Koka on 8/13/18.
//  Copyright © 2018 Pavel Koka. All rights reserved.
//

#import "KPIStates.h"

@implementation KPIStates
typedef NS_OPTIONS(NSUInteger, KPIStateSize) {
    KPIStateSizeNone                 = 0,
    KPIStateSizePartTimeJob          = 1 << 0,
    KPIStateSizeFullTimeJob          = 1 << 1,
    KPIStateSizeJunior               = 1 << 2,
    KPIStateSizeProduction           = 1 << 3,
    KPIStateSizeB1EnglishLevel       = 1 << 4,
    KPIStateSizeB2EnglishLevel       = 1 << 5,
    KPIStateSizeMiddle               = 1 << 6,
    KPIStateSizeSenior               = 1 << 7,
    KPIStateSizeLid                  = 1 << 8
};


typedef NS_ENUM(NSUInteger, KPIEvent){
    KPIEvent1,
    KPIEvent2,
    KPIEvent3,
    KPIEvent4,
    KPIEvent5,
    KPIEvent6
    
};

@end
