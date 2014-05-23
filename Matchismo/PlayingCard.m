//
//  PlayingCard.m
//  Matchismo
//
//  Created by Alberto Jauregui on 5/19/14.
//  Copyright (c) 2014 Alberto Jauregui. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)otherCards {
    int score = 0;
    if([otherCards count] == 1){
        PlayingCard *otherCard = [otherCards firstObject];
        if ([self.suit isEqualToString:otherCard.suit]) {
            score=1;
        }else if(self.rank == otherCard.rank){
            score = 4;
        }
    }
    
    return score;
}

@synthesize suit = _suit; // because we implement both the setter and the getter we need to synthetize the property

- (NSString *)contents { // inherits from Card so we are overriding this property getter
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void) setSuit:(NSString *)suit { // setter for the suit property
    if([[PlayingCard validSuits] containsObject:suit]){ // we call the class method here to compare with the suit
        _suit = suit;
    }
}

- (NSString *)suit { // getter for the suit property to prevent use suit with nil value instead we return a question mark
    return _suit ? _suit : @"?";
}

- (void) setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

#pragma mark - Class Methods
+ (NSArray *)validSuits { // class method
    return @[@"♥️", @"♦️", @"♠️", @"♣️"];
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count]-1;
}


@end
