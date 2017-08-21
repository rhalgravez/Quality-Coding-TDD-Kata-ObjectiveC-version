#import "BowlingGame.h"

@implementation BowlingGame{
    NSUInteger _score;
}

-(void)rollWithPinCount:(NSInteger)pins {
    _score += pins;
}

-(NSUInteger)score {
    return _score;
}

@end
