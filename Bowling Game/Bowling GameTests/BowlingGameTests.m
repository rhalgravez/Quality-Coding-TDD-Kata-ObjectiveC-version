#import <XCTest/XCTest.h>
#import "BowlingGame.h"

@interface BowlingGameTests : XCTestCase

@end

@implementation BowlingGameTests {
    BowlingGame *game;
}

-(void)setUp {
    [super setUp];
    game =[[BowlingGame alloc] init];
}

-(void)tearDown {
    game = nil;
    [super tearDown];
}

-(void)rollPins:(NSUInteger)pins times:(NSUInteger)n {
    for (NSUInteger i = 0; i < n; i++) {
        [game rollWithPinCount:pins];
    }
}

- (void)testGutterGame {
    [self rollPins:0 times:20];
    XCTAssertEqual([game score], 0, @"Score should be 0");
}

- (void)testAllOnes {
    [self rollPins:1 times:20];
    XCTAssertEqual([game score], 20, @"Score should be 20");
}

//-(void)testOneSpare {
//    [game rollWithPinCount:5];
//    [game rollWithPinCount:5];// spare
//    [game rollWithPinCount:3];
//    [self rollPins:0 times:17];// rest of rolls
//    XCTAssertEqual([game score], 16, @"Final score should be 16");
//}
@end
