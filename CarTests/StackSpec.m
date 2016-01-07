//
//  StackSpec.m
//  Car
//
//  Created by Cristian Kocza on 07/01/16.
//  Copyright © 2016 Cristik. All rights reserved.
//

#import "Stack.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(StackSpec)
__block ArrayStack *stack = nil;

beforeEach(^{
    stack = [[ArrayStack alloc] init];
});

describe(@"push", ^{
    it(@"pushes a value when empty", ^{
        [stack push: @"abc"];
        [[stack.top should] equal:@"abc"];
    });
    
    
    it(@"pushes a value when not empty", ^{
        [stack push: @"def"];
        [stack push: @"ghi"];
        [[stack.top should] equal:@"ghi"];
    });
});

SPEC_END
