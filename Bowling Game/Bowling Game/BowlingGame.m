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
        //spare
        if ((_rolls[i] + _rolls[i + 1]) == 10) {
            score += 10 + _rolls[i +2];
            i += 2;
        } else {
            score += _rolls[i] + _rolls[i + 1];
            i += 2;
        }
    }
    return score;
}

@end
