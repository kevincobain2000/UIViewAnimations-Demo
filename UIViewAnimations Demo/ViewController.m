//
//  ViewController.m
//  UIViewAnimations Demo
//
//  Created by Pulkit Kathuria on 10/27/12.
//  Copyright (c) 2012 Pulkit Kathuria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.labelTitle.textColor     = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    self.labelTitle.shadowColor   = [UIColor grayColor];
    self.labelTitle.shadowOffset  = CGSizeMake(-1.0,-1.0);
    self.labelReset.textColor     = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    self.labelReset.shadowColor   = [UIColor grayColor];
    self.labelReset.shadowOffset  = CGSizeMake(-1.0,-1.0);
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"ipad-BG-pattern.png"] drawInRect:self.view.bounds];
    UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    tableData = [[NSArray alloc] initWithObjects:@"Zoom in", @"Fade in",
                 @"Fade out", @"Move down", @"Move up", @"Move left", @"Move right",
                 @"Bounce down", @"Bounce up",@"Shadow Trapezoidal",
                 @"Shadow Elliptical", @"Shadow Curl",@"Frame and Shadow", @"Rotate", @"Rotate and Fade in",
                 nil];
    
    tableDetails = [[NSArray alloc] initWithObjects:@"Zoom in the image", @"Fade in the image",
                    @"Fade out the image", @"Move the image down 100pts", @"Move the image up 100pts", @"Move the image to the left 100pts", @"Move the image to the right 100pts", @"Bouncy effect", @"Bounce up effect",
                    @"Puts Trapezoidal shadow on image", @"Puts Elliptical shadow on image",
                    @"Puts a Curl Shadow", @"Puts a White Frame on the Image", @"Rotate 20 Degrees", @"2 Actions Together",
                    nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [tableData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"myCell"];
    }
    

    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:13.0];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:11.0];
    cell.detailTextLabel.text = [tableDetails objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *choice = [[NSString alloc] initWithFormat:@"%@", [tableData objectAtIndex:indexPath.row]];
    [self doAnimations:choice];
}

- (void)doAnimations:(NSString *) choice{
    if ([choice isEqualToString:@"Zoom in"]){
        [Animations zoomIn:self.imageView andAnimationDuration:1.0 andWait:YES];
    }
    if ([choice isEqualToString:@"Fade in"]) {
        [Animations fadeIn:self.imageView andAnimationDuration:1.0 andWait:YES];
    }
    if ([choice isEqualToString:@"Fade out"]) {
        [Animations fadeOut:self.imageView andAnimationDuration:1.0 andWait:YES];
    }
    if ([choice isEqualToString:@"Move down"]){
        [Animations moveDown:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
    }
    if ([choice isEqualToString:@"Move up"]){
        [Animations moveUp:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
    }
    if ([choice isEqualToString:@"Move left"]){
        [Animations moveLeft:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
    }
    if ([choice isEqualToString:@"Move right"]){
        [Animations moveRight:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
    }
    if ([choice isEqualToString:@"Bounce down"]){
        [Animations shadowOnView:self.imageView andShadowType:@"Elliptical"];
        [Animations moveDown:self.imageView andAnimationDuration:0.2 andWait:YES andLength:100.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.2 andWait:YES andLength:20.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.1 andWait:YES andLength:20.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.1 andWait:YES andLength:12.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.1 andWait:YES andLength:12.0];

    }
    if ([choice isEqualToString:@"Bounce up"]){
        [Animations shadowOnView:self.imageView andShadowType:@"Elliptical"];
        [Animations moveUp:self.imageView andAnimationDuration:0.2 andWait:YES andLength:50.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.2 andWait:YES andLength:10.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.1 andWait:YES andLength:5.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.1 andWait:YES andLength:10.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.1 andWait:YES andLength:12.0];
        
    }
    if ([choice isEqualToString:@"Shadow Trapezoidal"]){
        [Animations shadowOnView:self.imageView andShadowType:@"Trapezoidal"];
    }
    
    if ([choice isEqualToString:@"Shadow Elliptical"]){
        [Animations shadowOnView:self.imageView andShadowType:@"Elliptical"];
    }
    if ([choice isEqualToString:@"Shadow Curl"]){
        [Animations shadowOnView:self.imageView andShadowType:@"Curl"];
    }
    if ([choice isEqualToString:@"Frame and Shadow"]){
        [Animations frameAndShadow:self.imageView];
    
    }
    if ([choice isEqualToString:@"Rotate"]){
        [Animations rotate:self.imageView andAnimationDuration:1.0 andWait:YES andAngle:20];
        
    }
    if ([choice isEqualToString:@"Rotate and Fade in"]){
        [Animations rotate:self.imageView andAnimationDuration:2.0 andWait:NO andAngle:340];
        [Animations fadeIn:self.imageView andAnimationDuration:2.0 andWait:YES];
    }
    
}


- (IBAction)resetPressed:(id)sender {
    self.imageView.alpha = 1.0;
    self.imageView.transform = CGAffineTransformIdentity;
    [Animations shadowOnView:self.imageView andShadowType:@"NoShadow"];
    self.imageView.frame = CGRectMake(40, 46, 240, 128);
}
@end
