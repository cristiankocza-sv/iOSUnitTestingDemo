//
//  StackTests.m
//  Car
//
//  Created by Cristian Kocza on 07/01/16.
//  Copyright © 2016 Cristik. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"

@interface StackTests : XCTestCase {
    ArrayStack *stack;
}

@end

@implementation StackTests

- (void)setUp {
    [super setUp];
    stack = [[ArrayStack alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNewlyCreatedStackIsEmpty {
    XCTAssertTrue(stack.isEmpty);
}

- (void)testPushAddsTheElementForEmptyStack {
    [stack push:@"123"];
    XCTAssertEqualObjects(@"123", stack.top);
}

@end
