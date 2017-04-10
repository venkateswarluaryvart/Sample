//
//  ViewController.m
//  Timer_sample
//
//  Created by VInoth on 07/11/16.
//  Copyright © 2016 Aryvart. All rights reserved.
//

#import "ViewController.h"
#import "MZTimerLabel.h"
#import "KAProgressLabel.h"

@interface ViewController ()
@property (weak,nonatomic) IBOutlet KAProgressLabel * pLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// this is new changes
    timerExample6 = [[MZTimerLabel alloc] initWithLabel:_lblTimerExample6 andTimerType:MZTimerLabelTypeTimer];
    timerExample6.timeFormat = @"hh:mm:ss";
    [timerExample6 setCountDownTime:3600];
    timerExample6.resetTimerAfterFinish = YES;
    timerExample6.delegate = self;
    
   // [_circleProgressBar setProgress:(4.0f) animated:YES];
    
    if(![timerExample6 counting]){
        [timerExample6 start];
    }
    
    
    
    self.pLabel.backgroundColor = [UIColor clearColor];
    
    
    self.pLabel.labelAnimCompleteBlock = ^(KAProgressLabel *label) {
        NSLog(@"Animation complete !");
    };
    
    [self.pLabel setTrackWidth: 2.0];
    [self.pLabel setProgressWidth: 4];
    self.pLabel.fillColor = [[UIColor lightGrayColor] colorWithAlphaComponent:.3];
    self.pLabel.trackColor = [UIColor redColor];
    self.pLabel.progressColor = [UIColor greenColor];
    self.pLabel.isStartDegreeUserInteractive = YES;
    self.pLabel.isEndDegreeUserInteractive = YES;
    _pLabel.progress=0;
    [self.pLabel setRoundedCornersWidth:10];

}

// this is new changes


-(NSString*)timerLabel:(MZTimerLabel*)timerLabel customTextToDisplayAtTime:(NSTimeInterval)time
{
    [self.pLabel setProgress:(_pLabel.progress + 0.0017f)];
    NSString *str;
    
      NSLog(@"%f",_pLabel.progress);
    if( _pLabel.progress >=0.9999999f)
    {
        _pLabel.progress=0;
    
    }
    
    return str;
}
- (void)timerLabel:(MZTimerLabel*)timerLabel finshedCountDownTimerWithTime:(NSTimeInterval)countTime{
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
