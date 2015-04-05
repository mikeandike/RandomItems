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
        for (int i = 0; i <10; i++) {
            YWItem *item = [YWItem randomItem];
            [items addObject:item];
        }
        
        
        for(YWItem *item in items){
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting items to nil....");
        items = nil;
    }
    return 0;
}
