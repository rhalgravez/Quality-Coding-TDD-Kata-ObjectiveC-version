#import "BowlingGame.h"

@implementation BowlingGame{
    NSUInteger _rolls[21];
    NSUInteger _currentRoll;
}

-(void)rollWithPinCount:(NSInteger)pins {
    _rolls[_currentRoll++] = pins;
}

-(NSUInteger)score {
    NSUInteger score = 0;
    for (NSUInteger i = 0; i < 21; i++) {
        if(_rolls[i] +_rolls[i+1] == 10) {
            score += ... //Wait...this is not going to work, "i"might not refer to the first ball of the frame
        }
    }
    return score;
}

@end
