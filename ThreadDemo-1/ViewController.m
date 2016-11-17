//
//  ViewController.m
//  ThreadDemo-1
//
//  Created by Felix-Madhuri on 16/11/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)download:(id)sender {
    
    NSString *imgpath=@"http://economictimes.indiatimes.com/thumb/msid-50941625,width-640,resizemode-4/mughal-gardens-in-full-bloom.jpg";

    [_indicator startAnimating];
    
    [NSThread detachNewThreadSelector:@selector(downloadImage:) toTarget:self withObject:imgpath];
}
-(void)downloadImage:(NSString *)imagepath
{
    NSURL *url=[NSURL URLWithString:imagepath];
    NSData *data=[NSData dataWithContentsOfURL:url];

    UIImage *img=[UIImage imageWithData:data];
    [self performSelectorOnMainThread:@selector(updateUI:) withObject:img waitUntilDone:NO];
}

-(void)updateUI: (UIImage *)actualimage
{
    self.imgview.image=actualimage;
    [_indicator stopAnimating];
    
}









@end
