//
//  UTRadioStreamList.h
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTRadioStreamList : NSObject {
    NSMutableDictionary *_stations;
}

+ (UTRadioStreamList*)sharedInstance;

/**
 * Finds the frequency for a station, if either saved via addStation,
 * or if the stations webservice returns it
 */
- (void)frequencyForStationAsync:(NSString*)stationName
               completionHandler:(void(^)(NSNumber *freq))onComplete;

- (void)addStation:(NSString*)stationName frequency:(NSNumber*)frequency;

@end
