//
//  YWItem.h
//  RandomItems
//
//  Created by Michael Sacks on 4/3/15.
//  Copyright (c) 2015 Michael Sacks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWItem : NSObject

@property (nonatomic, strong) YWItem *containedItem;
@property (nonatomic, weak) YWItem *container;
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

+(instancetype)randomItem;

-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

-(instancetype)initWithItemName:(NSString *)name;
@end
