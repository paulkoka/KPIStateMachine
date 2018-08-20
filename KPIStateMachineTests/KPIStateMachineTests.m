//
//  KPIStateMachineTests.m
//  KPIStateMachineTests
//
//  Created by Pavel Koka on 8/11/18.
//  Copyright © 2018 Pavel Koka. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "KPIStates.h"

@interface KPIStateMachineTests : XCTestCase
@property (nonatomic) KPIStates *stateMachine;
@end

@implementation KPIStateMachineTests

- (void)setUp {
    [super setUp];
    self.stateMachine = [[KPIStates alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    self.stateMachine = nil;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testZhen {
    self.stateMachine.yourPol = zhen;
    for ( int i = 0; i < 100; i++) {
        [self.stateMachine performEvent:toNextFloor];
        [self.stateMachine performEvent:stop];
    }
   
    XCTAssertEqual(self.stateMachine.currentFloor, sorry);
}


- (void)testMyzhFirst {
    self.stateMachine.yourPol = myzh;
   
        [self.stateMachine performEvent:toNextFloor];
        [self.stateMachine performEvent:stop];
    
    
    XCTAssertEqual(self.stateMachine.currentFloor, congratulations);
}

- (void)testMyzhSecond {
    self.stateMachine.yourPol = myzh;
    for ( int i = 0; i < 100; i++) {
        [self.stateMachine performEvent:toNextFloor];
    }
    
    XCTAssertEqual(self.stateMachine.currentFloor, congratulations);
}


@end
