//
//  Car.m
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import "UTCar.h"
#import "UTRadioStreamList.h"

@implementation UTCar {
    BOOL _started;
}

- (id)initWithEngine:(UTEngine*)engine radio:(UTCarRadio*)radio {
    if(self = [super init]) {
        _engine = engine;
        _radio = radio;
    }
    return self;
}

- (BOOL)start {
    _started = [self.engine ignite];
    return _started;
}

- (void)changeRadioStationTo:(NSString*)stationName {
    if(!_started) return;
    [[UTRadioStreamList sharedInstance] frequencyForStationAsync:stationName completionHandler:^(NSNumber *freq) {
        if(freq) {
            [self.radio changeFrequencyTo:freq.floatValue];
        }
    }];
}
@end
