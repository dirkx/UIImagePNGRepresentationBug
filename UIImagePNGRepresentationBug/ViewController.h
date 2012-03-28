//
//  ViewController.h
//  UIImagePNGRepresentationBug
//
//  Created by Dirk-Willem van Gulik on 28-03-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UIImageView *before, *after;
@property IBOutlet UISegmentedControl *ctrl;

-(IBAction)change:(id)sender;

@end
