//
//  DFSViewController.h
//  AdaptivePicker
//
//  Created by Jun Luo on 2014-03-20.
//  Copyright (c) 2014 Jun Luo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DFSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UIButton *timeButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pickerHeight;
@property (weak, nonatomic) IBOutlet UIView *adaptivePicker;

- (IBAction) done:(id)sender;
- (IBAction) changeTime:(id)sender;

@end
