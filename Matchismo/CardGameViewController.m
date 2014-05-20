//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Alberto Jauregui on 5/20/14.
//  Copyright (c) 2014 Alberto Jauregui. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

- (void) setFlipCount:(int)flipCount { // setter for the flipCount property to update also the flipsLabel.text
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card){
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

@end
