//
//  PlayingCard.h
//  Matchismo
//
//  Created by Alberto Jauregui on 5/19/14.
//  Copyright (c) 2014 Alberto Jauregui. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
