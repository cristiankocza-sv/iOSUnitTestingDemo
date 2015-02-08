//
//  Engine.h
//  Car
//
//  Created by Cristian Kocza on 07/02/15.
//  Copyright (c) 2015 Cristik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTEngine : NSObject

@property(nonatomic,strong,readonly) NSArray *sparkPlugs;

- (id)initWithSparkPlugs:(NSArray*)sparkPlugs;

/**
 * Ignites the engine. Asks all spark plugs to sparkle, returns YES only
 * if all spark plugs sparkle.
 */
- (BOOL)ignite;
@end
