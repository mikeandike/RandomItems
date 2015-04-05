//
//  main.m
//  RandomItems
//
//  Created by Michael Sacks on 4/3/15.
//  Copyright (c) 2015 Michael Sacks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YWItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        YWItem *backpack = [[YWItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        YWItem *calculator = [[YWItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for(YWItem *item in items){
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting items to nil....");
        items = nil;
    }
    return 0;
}
