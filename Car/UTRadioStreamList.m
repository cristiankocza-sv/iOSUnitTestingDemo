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

- (NSNumber*)frequencyForStation:(NSString*)stationName {
    return [_stations objectForKey:stationName];
}

- (void)addStation:(NSString*)stationName frequency:(NSNumber*)frequency {
    [_stations setObject:frequency forKey:stationName];
}
@end
