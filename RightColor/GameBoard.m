//
//  GameBoard.m
//  RightColor
//
//  Created by A. Vatsaev on 13/12/2013.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "GameBoard.h"


@implementation GameBoard

-(id)init{
    
    self = [super init];
    
    ColorCell *c0 = [ColorCell alloc].init;
    ColorCell *c1 = [ColorCell alloc].init;
    ColorCell *c2 = [ColorCell alloc].init;
    ColorCell *c3 = [ColorCell alloc].init;
    ColorCell *c4 = [ColorCell alloc].init;
    
    
    ColorCell *c5 = [ColorCell alloc].init;
    ColorCell *c6 = [ColorCell alloc].init;
    ColorCell *c7 = [ColorCell alloc].init;
    ColorCell *c8 = [ColorCell alloc].init;
    ColorCell *c9 = [ColorCell alloc].init;
    
    
    ColorCell *c10 = [ColorCell alloc].init;
    ColorCell *c11 = [ColorCell alloc].init;
    ColorCell *c12 = [ColorCell alloc].init;
    ColorCell *c13 = [ColorCell alloc].init;
    ColorCell *c14 = [ColorCell alloc].init;
    
    
    ColorCell *c15 = [ColorCell alloc].init;
    ColorCell *c16 = [ColorCell alloc].init;
    ColorCell *c17 = [ColorCell alloc].init;
    ColorCell *c18 = [ColorCell alloc].init;
    ColorCell *c19 = [ColorCell alloc].init;
    
    
    ColorCell *c20 = [ColorCell alloc].init;
    ColorCell *c21 = [ColorCell alloc].init;
    ColorCell *c22 = [ColorCell alloc].init;
    ColorCell *c23 = [ColorCell alloc].init;
    ColorCell *c24 = [ColorCell alloc].init;

    
    self.cells = [[NSArray alloc] initWithObjects:
                  
                  c0,
                  c1,
                  c2,
                  c3,
                  c4,
                  
                  c5,
                  c6,
                  c7,
                  c8,
                  c9,
                  
                  c10,
                  c11,
                  c12,
                  c13,
                  c14,
                  
                  c15,
                  c16,
                  c17,
                  c18,
                  c19,
                  
                  c20,
                  c21,
                  c22,
                  c23,
                  c24,
                  
                  nil];
    
    return self;
}


-(bool)cellIsValidAtIndex: (int)i{
    return [[self.cells objectAtIndex:i] valid];
}




@end
