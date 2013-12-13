//
//  GameBoard.h
//  RightColor
//
//  Created by A. Vatsaev on 13/12/2013.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ColorCell.h"


@interface GameBoard : NSObject


@property (strong, nonatomic) NSArray* cells;

-(bool)cellIsValidAtIndex: (int)i;

@end
