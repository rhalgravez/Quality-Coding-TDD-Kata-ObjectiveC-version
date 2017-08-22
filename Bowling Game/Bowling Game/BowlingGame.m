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
        if ([self isStrike:roll]) { // strike
            score += 10 + [self strikeBonus:roll];
            roll++;
        }else if ([self isSpare:roll]) { // spare
            score += 10 + [self spareBonus:roll];
            roll += 2;
        } else {
            score += [self sumOfBallsInFrame:roll];
            roll += 2;
        }
    }
    return score;
}

-(BOOL)isStrike:(NSUInteger)roll {
    return _rolls[roll] == 10;
}

-(BOOL)isSpare:(NSUInteger)roll {
    return (_rolls[roll] + _rolls[roll + 1]) == 10;
}

-(NSUInteger)strikeBonus:(NSUInteger)roll {
    return _rolls[roll + 1] + _rolls[roll + 2];
}

-(NSUInteger)spareBonus:(NSUInteger)roll {
    return _rolls[roll = 2];
}

-(NSUInteger)sumOfBallsInFrame:(NSUInteger)roll {
    return _rolls[roll] + _rolls[roll +1];
}

@end
