//
//  ColorCell.m
//  RightColor
//
//  Created by A. Vatsaev on 13/12/2013.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "ColorCell.h"

@implementation ColorCell

-(id)init{
    self = [super init];
    
    self.valid =true;
    
    
    return self;
    
}

-(void)isValid: (bool)valid{
    self.valid = valid;
}


@end
