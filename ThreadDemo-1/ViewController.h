//
//  ViewController.h
//  ThreadDemo-1
//
//  Created by Felix-Madhuri on 16/11/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


@property (weak, nonatomic) IBOutlet UIImageView *imgview;

- (IBAction)download:(id)sender;






@end

