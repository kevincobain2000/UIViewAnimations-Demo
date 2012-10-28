//
//  ViewController.h
//  UIViewAnimations Demo
//
//  Created by Pulkit Kathuria on 10/27/12.
//  Copyright (c) 2012 Pulkit Kathuria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Animations.h"
@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    NSArray *tableData;
    NSArray *tableDetails;
}
- (void)doAnimations:(NSString *) choice;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *resetButton;
@property (strong, nonatomic) IBOutlet UILabel *labelReset;
@property (strong, nonatomic) IBOutlet UILabel *labelTitle;

- (IBAction)resetPressed:(id)sender;
@end
