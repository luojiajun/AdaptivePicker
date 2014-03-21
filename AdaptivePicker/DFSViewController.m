//
//  DFSViewController.m
//  AdaptivePicker
//
//  Created by Jun Luo on 2014-03-20.
//  Copyright (c) 2014 Jun Luo. All rights reserved.
//

#import "DFSViewController.h"

@interface DFSViewController ()

@end

@implementation DFSViewController

CGFloat old_picker_height;

- (void)viewDidLoad
{
    [super viewDidLoad];
    old_picker_height = self.pickerHeight.constant;
    self.pickerHeight.constant = 0;
    self.datePicker.hidden = YES;
    [self.adaptivePicker setNeedsUpdateConstraints];
    [self.adaptivePicker.superview layoutIfNeeded];
    self.navigationItem.rightBarButtonItem = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) done:(id)sender
{
    self.navigationItem.rightBarButtonItem = nil;

    old_picker_height = self.pickerHeight.constant;
    self.pickerHeight.constant = 0;
    [self.adaptivePicker setNeedsUpdateConstraints];
    [UIView animateWithDuration:0.1 animations:^{
        self.datePicker.hidden = YES;
    } completion:^(BOOL finished){
        [UIView animateWithDuration:0.2 animations:^{
            [self.adaptivePicker.superview layoutIfNeeded];
        }];
    }];
}

- (IBAction) changeTime:(id)sender
{
    if (!self.datePicker.hidden)
        return;

    self.pickerHeight.constant = old_picker_height;
    [self.adaptivePicker setNeedsUpdateConstraints];
    [UIView animateWithDuration:0.2 animations:^{
        [self.adaptivePicker.superview layoutIfNeeded];
    } completion:^(BOOL finished){
        [UIView animateWithDuration:0.1 animations:^{
            self.datePicker.hidden = NO;
        }];
    }];

    self.navigationItem.rightBarButtonItem = self.doneButton;
}

@end
