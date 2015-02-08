//
//  UTCarRadio.m
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import "UTCarRadio.h"

@implementation UTCarRadio

- (BOOL)changeFrequencyTo:(float)freq {
    // only FM frequencies allowed
    return freq >= 88 && freq <= 108;
}

@end
