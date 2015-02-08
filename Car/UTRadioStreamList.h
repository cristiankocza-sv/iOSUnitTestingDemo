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
- (NSNumber*)frequencyForStation:(NSString*)stationName;

- (void)addStation:(NSString*)stationName frequency:(NSNumber*)frequency;

@end
