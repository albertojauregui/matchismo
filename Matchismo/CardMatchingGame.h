//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Alberto Jauregui on 5/20/14.
//  Copyright (c) 2014 Alberto Jauregui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount: (NSUInteger)count usingDeck: (Deck *)deck;
- (void) chooseCardAtIndex: (NSUInteger)index;
- (Card *)cardAtIndex: (NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
