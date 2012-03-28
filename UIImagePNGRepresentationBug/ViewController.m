//
//  ViewController.m
//  UIImagePNGRepresentationBug
//
//  Created by Dirk-Willem van Gulik on 28-03-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize before, after, ctrl;


-(void)test {
    
    UIImage * img = [UIImage imageNamed:@"upside-down-testcard.png"];
    
    UIImage * img2 = [UIImage imageWithCGImage:img.CGImage
                                          scale:1.0
                                    orientation:UIImageOrientationDown];
    
    before.image = img2;

    NSData * data;
    if (ctrl.selectedSegmentIndex == 1)
        data = UIImagePNGRepresentation(img2);
    else
        data = UIImageJPEGRepresentation(img2, 1.0);
    
    after.image = [UIImage imageWithData:data];
        

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self test];
}

-(IBAction)change:(id)sender {
    [self test];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
