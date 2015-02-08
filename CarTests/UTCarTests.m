//
//  CarTests.m
//  CarTests
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UTCar.h"
#import "UTCarRadio.h"
#import "UTRadioStreamList.h"

@interface UTFakeCarRadio : UTCarRadio
@property BOOL changeFrequencyResult;
@end

@implementation UTFakeCarRadio

- (BOOL)changeFrequencyTo:(float)freq {
    return self.changeFrequencyResult;
}

@end

@interface UTFakeEngine : UTEngine
@property BOOL igniteResult;
@end

@implementation UTFakeEngine

- (BOOL)ignite {
    return self.igniteResult;
}

@end

@interface UTCarTests : XCTestCase {
    UTCar *car;
    UTFakeCarRadio *radio;
    UTFakeEngine *engine;
}

@end

@implementation UTCarTests

- (id)init {
    if(self = [super init]) {
        [[UTRadioStreamList sharedInstance] addStation:@"ProFM" frequency:@104.5];
    }
    return self;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    engine = [[UTFakeEngine alloc] init];
    radio = [[UTFakeCarRadio alloc] init];
    car = [[UTCar alloc] initWithEngine:engine radio:radio];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test_start_returnsNO_ifEngineDoesntIgnite {
    engine.igniteResult = NO;
    BOOL started = [car start];
    XCTAssertFalse(started);
}

- (void)test_start_returnsYES_ifEngineDoesIgnite {
    engine.igniteResult = YES;
    BOOL started = [car start];
    XCTAssertTrue(started);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        [car start];
    }];
}

@end
