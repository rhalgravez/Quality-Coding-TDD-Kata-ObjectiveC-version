//
//  BowlingGame.h
//  Bowling Game
//
//  Created by Roberto Halgravez on 8/21/17.
//  Copyright © 2017 Roberto Halgravez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BowlingGame : NSObject

-(void)rollWithPinCount:(NSInteger)pins;
-(NSUInteger)score;

@end
