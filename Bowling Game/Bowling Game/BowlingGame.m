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
    NSUInteger roll = 0;
    for (NSUInteger frame = 0; frame < 10; frame++) {
        if (_rolls[roll] == 10) { // strike
            score += 10 + _rolls[roll + 1] + _rolls[roll + 2];
            roll++;
        }else if ([self isSpare:roll]) { // spare
            score += 10 + _rolls[roll +2];
            roll += 2;
        } else {
            score += _rolls[roll] + _rolls[roll + 1];
            roll += 2;
        }
    }
    return score;
}

-(BOOL)isSpare:(NSUInteger)roll {
    return (_rolls[roll] + _rolls[roll + 1]) == 10;
}

@end
