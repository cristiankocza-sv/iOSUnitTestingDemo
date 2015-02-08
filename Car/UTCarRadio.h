//
//  UTCarRadio.h
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTCarRadio : NSObject

/**
 * Changes the frequency. Returns YES if the given frequency corresponds
 * to a valid FM frequecy (88.0 <= freq < 108.0)
 */
- (BOOL)changeFrequencyTo:(float)freq;

@end
