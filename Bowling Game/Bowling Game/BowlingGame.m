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
    NSUInteger i = 0;
    for (NSUInteger frame = 0; frame < 10; frame++) {
        score += _rolls[1] + _rolls[i + 1];
        i += 2;
    }
    return score;
}

@end
