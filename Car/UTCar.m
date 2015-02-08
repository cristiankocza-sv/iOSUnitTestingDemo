//
//  Car.m
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import "UTCar.h"
#import "UTRadioStreamList.h"

@implementation UTCar

- (id)initWithRadio:(UTCarRadio*)radio {
    if(self = [super init]) {
        _radio = radio;
    }
    return self;
}

- (void)start {
    
}

- (BOOL)changeRadioStationTo:(NSString*)stationName {
    NSNumber *freq = [[UTRadioStreamList sharedInstance] frequencyForStation:stationName];
    if(freq) {
        [self.radio changeFrequencyTo:freq.floatValue];
    }
    return freq != nil;
}
@end
