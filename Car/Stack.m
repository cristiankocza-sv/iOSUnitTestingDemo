//
//  Stack.m
//  Car
//
//  Created by Cristian Kocza on 07/01/16.
//  Copyright © 2016 Cristik. All rights reserved.
//

#import "Stack.h"

@interface ArrayStack()
@property (nonatomic) NSMutableArray *objects;
@end

@implementation ArrayStack

- (instancetype)init {
    if (self = [super init]) {
        _objects = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL)isEmpty {
    return self.objects.count == 0;
}

- (void)push:(id)obj {
    [self.objects addObject:obj];
}

- (id)pop {
    id result = self.objects[self.objects.count-1];
    [self.objects removeObjectAtIndex:self.objects.count-1];
    return result;
}

- (id)top {
    return self.objects[0];
}

@end
