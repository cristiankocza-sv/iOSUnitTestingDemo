//
//  Stack.h
//  Car
//
//  Created by Cristian Kocza on 07/01/16.
//  Copyright © 2016 Cristik. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 
  * Classes conforming to this protocol represent stacks
  */
@protocol Stack<NSObject>
/**
  * Check if the stack is empty
  * @return YES if the stack has no elements, otherwise NO
  */
@property (nonatomic, readonly) BOOL isEmpty;

/**
 * Returns the element at the top of the stack, witout removing it
 */
@property (nonatomic, readonly) id top;

/**
  * Pushes a new object on the stack
  */
- (void)push:(id)obj;

/**
  * Pops the element at the top of the stack and returns it
  */
- (id)pop;

@end


@interface ArrayStack : NSObject<Stack>

@end