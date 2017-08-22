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
        score += _rolls[i];
    }
    return score;
}

@end
