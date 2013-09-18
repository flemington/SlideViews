//
//  ViewController.m
//  slideviews
//
//  Created by Fleming Fu on 13-9-18.
//  Copyright (c) 2013年 anocomp. All rights reserved.
//

#import "ViewController.h"
#import "SlideViews.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect rct = CGRectMake(0, 50, 320, 200);
    
    
    
    UIImageView * uiv1 = [[UIImageView alloc] initWithFrame:rct];
    [uiv1 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://news.baidu.com/z/resource/r/image/2013-09-13/5e48300b14ce86ab8322b9369cca5125.jpg"]]]];
    
    UIImageView * uiv2 = [[UIImageView alloc] initWithFrame:rct];
    [uiv2 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://b.hiphotos.baidu.com/news/pic/item/500fd9f9d72a605973712dd72934349b023bba9e.jpg"]]]];
    
    UIImageView * uiv3 = [[UIImageView alloc] initWithFrame:rct];
    [uiv3 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://news.baidu.com/z/resource/r/image/2013-09-13/dddca16ba499058bc1c878b3a4755ede.jpg"]]]];
    
    UIImageView * uiv4 = [[UIImageView alloc] initWithFrame:rct];
    [uiv4 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://news.baidu.com/z/resource/r/image/2013-09-13/c6f0bf2449e66f5d0c3331ace0714361.jpg"]]]];
    
    UIImageView * uiv5 = [[UIImageView alloc] initWithFrame:rct];
    [uiv5 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://news.baidu.com/z/resource/r/image/2013-09-13/061e45db3cb3074633aca7c74e4d9e9d.jpg"]]]];
    
    NSArray * vws = [[NSArray alloc] initWithObjects:uiv1,uiv2,uiv3,uiv4,uiv5, nil];
    SlideViews * sv = [[SlideViews alloc] initWithViews:vws Frame:rct];
    
    
    [self.view addSubview:sv];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
