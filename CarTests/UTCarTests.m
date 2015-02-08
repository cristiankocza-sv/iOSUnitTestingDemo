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

@interface UTCarTests : XCTestCase {
    UTCar *car;
    UTFakeCarRadio *radio;
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
    radio = [[UTFakeCarRadio alloc] init];
    car = [[UTCar alloc] initWithRadio:radio];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test_changeRadioStation_returnsNO_ifStationIsNotFound {
    BOOL changed = [car changeRadioStationTo:@"EuropaFM"];
    XCTAssertFalse(changed);
}

- (void)test_changeRadioStation_returnsNO_ifFrequencyExistsAndRadioReturnsNO {
    radio.changeFrequencyResult = NO;
    BOOL changed = [car changeRadioStationTo:@"ProFM"];
    XCTAssertFalse(changed);
}

- (void)test_changeRadioStation_returnsYES_ifFrequencyExistsAndRadioReturnsYES {
    radio.changeFrequencyResult = YES;
    BOOL changed = [car changeRadioStationTo:@"ProFM"];
    XCTAssertTrue(changed);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
