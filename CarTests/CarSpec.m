//
//  CarSpec.m
//  Car
//
//  Created by Cristian Kocza on 08/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Kiwi.h"
#import "UTCar.h"
#import "UTRadioStreamList.h"

SPEC_BEGIN(CarSpec)

let(engine, ^{return [UTEngine nullMock];});
let(radio, ^{return [UTCarRadio nullMock];});
let(car, ^{return [[UTCar alloc] initWithEngine:engine radio:radio];});
let(radioList, ^{return [UTRadioStreamList sharedInstance];});


describe(@"changeRadioStationTo:", ^{
    beforeAll(^{
        [radioList addStation:@"ProFM" frequency:@104.5];
    });

    context(@"started", ^{
        beforeEach(^{
            [engine stub:@selector(ignite) andReturn:theValue(YES)];
            [car start];
        });
        
        it(@"asks for the frequency of the radio station", ^{
            [[radioList should] receive:@selector(frequencyForStationAsync:completionHandler:)
                          withArguments:@"Radio ZU", any()];
            [car changeRadioStationTo:@"Radio ZU"];
        });
        
        it(@"asks the radio to set the frequency, if receinved", ^{
           [[radio should] receive:@selector(changeFrequencyTo:)
                     withArguments:theValue(104.5)];
            [car changeRadioStationTo:@"ProFM"];
        });
    });
});


SPEC_END
