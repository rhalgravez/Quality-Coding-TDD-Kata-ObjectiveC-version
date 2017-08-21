#import <XCTest/XCTest.h>
#import "BowlingGame.h"

@interface BowlingGameTests : XCTestCase

@end

@implementation BowlingGameTests

- (void)testGutterGame {
    BowlingGame *game =[[BowlingGame alloc] init];
    for (NSUInteger i = 0; i < 20; i++) {
        [game rollWithPinCount:0];
    }
    
    XCTAssertEqual([game score], 0, @"Score should be 0");
}

- (void)testAllOnes {
    BowlingGame *game = [[BowlingGame alloc] init];
    for (NSUInteger i = 0; i < 20; i++) {
        [game rollWithPinCount:1];
    }
    XCTAssertEqual([game score], 20, @"Score should be 20");
}
@end
