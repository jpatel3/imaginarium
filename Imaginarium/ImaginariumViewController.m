//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by Jaimin Patel on 4/4/13.
//  Copyright (c) 2013 Jaimin Patel. All rights reserved.
//

#import "ImaginariumViewController.h"

@interface ImaginariumViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ImaginariumViewController
@synthesize imageView;
@synthesize scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = self.imageView.image.size;
    self.imageView.frame = CGRectMake( 0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
}


-(UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return self.imageView;
    
}

- (void)didReceiveMemoryWarning
{  
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
} 

@end
