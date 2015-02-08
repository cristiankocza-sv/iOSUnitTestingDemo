//
//  UTRadioStreamList.m
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import "UTRadioStreamList.h"

@implementation UTRadioStreamList

+ (UTRadioStreamList*)sharedInstance {
    static UTRadioStreamList *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[UTRadioStreamList alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    if(self = [super init]) {
        _stations = [NSMutableDictionary new];
    }
    return self;
}

- (void)frequencyForStationAsync:(NSString*)stationName
               completionHandler:(void(^)(NSNumber *freq))onComplete {
    NSNumber *freq = [_stations objectForKey:stationName];
    if(freq && onComplete) {
        onComplete(freq);
    }
}

- (void)addStation:(NSString*)stationName frequency:(NSNumber*)frequency {
    [_stations setObject:frequency forKey:stationName];
}
@end
