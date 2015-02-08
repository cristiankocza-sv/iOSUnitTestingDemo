//
//  Car.h
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UTCarRadio.h"
#import "UTEngine.h"

@interface UTCar : NSObject

@property(nonatomic,assign,readonly) BOOL isStarted;
@property(nonatomic,strong,readonly) UTEngine *engine;
@property(nonatomic,strong,readonly) UTCarRadio *radio;

- (id)initWithEngine:(UTEngine*)engine radio:(UTCarRadio*)radio;

/**
 * Asks the engine to ignite.
 */
- (BOOL)start;

/**
 * Changes the radio station. Requires car to be started.
 * Retrieves the frequency from RadioStreamList and if received any,
 * asks the radio to set the freq.
 */
- (void)changeRadioStationTo:(NSString*)stationName;
@end
