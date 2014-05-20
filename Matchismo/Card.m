//
//  Card.m
//  Matchismo
//
//  Created by Alberto Jauregui on 5/19/14.
//  Copyright (c) 2014 Alberto Jauregui. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
