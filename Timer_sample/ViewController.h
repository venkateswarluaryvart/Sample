//
//  ViewController.h
//  Timer_sample
//
//  Created by VInoth on 07/11/16.
//  Copyright © 2016 Aryvart. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZTimerLabel.h"

@class CircleProgressBar;

typedef enum : NSUInteger {
    CustomizationStateDefault = 0,
    CustomizationStateCustom,
    CustomizationStateCustomAttributed,
} CustomizationState;


@interface ViewController : UIViewController<MZTimerLabelDelegate>
{
    MZTimerLabel *timerExample6;
}


@property (weak, nonatomic) IBOutlet UILabel *lblTimerExample6;


@end

