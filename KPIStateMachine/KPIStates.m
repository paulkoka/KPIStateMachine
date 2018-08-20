//
//  KPIStates.m
//  KPIStateMachine
//
//  Created by Pavel Koka on 8/13/18.
//  Copyright © 2018 Pavel Koka. All rights reserved.
//

#import "KPIStates.h"


@interface KPIStates()
@property(nonatomic, readwrite,  assign) KPIFloor currentFloor;


@end

@implementation KPIStates

-(instancetype) initWithPol:(Pol) pol{
    self = [super init];
    
    if (self) {
        _currentFloor = first;
        _yourPol = pol;
    }
    return  self;
}

-(void) performEvent:(KPIEvent) event{
    if (_currentFloor == sorry || _currentFloor == congratulations) {
        return;
    }
    if (((event == stop || event == toNextFloor) && _yourPol == zhen && self.currentFloor < tenth) || (_yourPol == myzh && event == toNextFloor && _currentFloor < fourth)) {
            self.currentFloor++;
        NSLog(@"nextFloor");
    }
    
    if (self.currentFloor == tenth && self.yourPol == zhen) {
        self.currentFloor = sorry;
        if (self.currentFloor == sorry) {
            NSLog(@"sorry");
        }
        return;
    }
    
    if (self.yourPol == myzh && event == stop) {
        self.currentFloor = congratulations;
        NSLog(@"our congratulations!!!");
        return;
    }
    
    if (self.yourPol == myzh && self.currentFloor >= fourth) {
        self.currentFloor = congratulations;
        NSLog(@"thet's enough, our congratulations!!!");
        return;
    }
    
    
}


@end
