//
//  GameViewController.h
//  RightColor
//
//  Created by A. Vatsaev on 13/12/2013.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameBoard.h"

@interface GameViewController : UIViewController

@property (strong, nonatomic) GameBoard* gameBoard;
@property (strong, nonatomic) IBOutlet UILabel *scoreView;

@property (strong, nonatomic) IBOutlet UILabel *timeView;
- (IBAction)hit:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *livesView;


@property (strong, nonatomic) IBOutlet UILabel *stateView;

@property int score;
@property int lives;
@property int gameState;

@property (nonatomic, retain) NSTimer *myTimer;




@end
