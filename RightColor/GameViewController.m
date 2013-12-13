//
//  GameViewController.m
//  RightColor
//
//  Created by A. Vatsaev on 13/12/2013.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "GameViewController.h"

#import "GameBoard.h"

#import "ColorCell.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (IBAction)start:(id)sender {
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:.06f
                                                    target:self
                                                  selector:@selector(updateBoard)
                                                  userInfo:nil
                                                   repeats:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.score = 0;
    self.lives = 5;
    self.gameState = -1;
    self.gameBoard = [GameBoard alloc].init;
    NSLog(@"%d", [self.gameBoard.cells count]);
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hit:(UIButton *)sender {
    [self updateState];
    if(self.gameState==-1){
        
        if([self.gameBoard cellIsValidAtIndex:sender.tag]){
            self.score++;
            
        }else{
            self.lives--;
        }
        
        if (self.lives<=0) {
            self.gameState=0;
            self.stateView.text =@"LOOSERRR!";
            [self.myTimer invalidate];
            
        }else if(self.score ==10){
            self.gameState =1;
            self.stateView.text = @"YOU WON!";
            [self.myTimer invalidate];
            
        }
        
    }

    [self updateState];
    
    
}

-(void)updateState{
    self.scoreView.text = [NSString stringWithFormat:@"%d",self.score];
    
    self.livesView.text = [NSString stringWithFormat:@"%d",self.lives];
    
    //self.timeView.text = [NSString stringWithFormat:@"%d",self.score];
    
    
}
- (IBAction)stop:(id)sender {
    [self.myTimer invalidate];
}
- (IBAction)reset:(id)sender {
    self.stateView.text = @"";
    [self.myTimer invalidate];
    for(int i=0; i<24;i++){
        UIButton *btn = (UIButton*)([self.view viewWithTag:i]);
        
       
            [btn setBackgroundColor:[UIColor colorWithRed:0.002 green:0.795 blue:0.003 alpha:1.000]];
            [(ColorCell*)([self.gameBoard.cells objectAtIndex:i]) isValid:YES];
       
    }
    
    self.score = 0;
    self.lives = 5;
    self.gameState = -1;
    [self updateState];
    
}

-(void)updateBoard{
    
    for(int i=0; i<25;i++){
        UIButton *btn = (UIButton*)([self.view viewWithTag:i]);
        
        if([self getRandomNumber]){
            [btn setBackgroundColor:[UIColor colorWithRed:0.002 green:0.795 blue:0.003 alpha:1.000]];
            [(ColorCell*)([self.gameBoard.cells objectAtIndex:i]) isValid:YES];
        }else{
            [btn setBackgroundColor:[UIColor redColor]];
            [(ColorCell*)([self.gameBoard.cells objectAtIndex:i]) isValid:NO];
            
        }
    }
    
}

-(int)getRandomNumber{
    
    return (int)0 + arc4random() % (1-0+1);
}


@end
