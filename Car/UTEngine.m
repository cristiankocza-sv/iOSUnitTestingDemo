//
//  Engine.m
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import "UTEngine.h"
#import "UTSparkPlug.h"

@implementation UTEngine

- (id)initWithSparkPlugs:(NSArray*)sparkPlugs {
    if(self = [super init]) {
        _sparkPlugs = sparkPlugs;
    }
    return self;
}

- (BOOL)ignite {
    for(UTSparkPlug *sparkPlug in self.sparkPlugs) {
        if(![sparkPlug sparkle]) return NO;
    }
    return YES;
}
@end
