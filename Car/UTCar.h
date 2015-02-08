//
//  Car.h
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UTCarRadio.h"

@interface UTCar : NSObject

@property(nonatomic,retain,readonly) UTCarRadio *radio;

- (id)initWithRadio:(UTCarRadio*)radio;

- (void)start;
- (BOOL)changeRadioStationTo:(NSString*)stationName;
@end
