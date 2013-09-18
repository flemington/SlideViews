//
//  SlideViews.m
//  testjson
//
//  Created by Fleming Fu on 13-9-13.
//  Copyright (c) 2013年 anocomp. All rights reserved.
//

#import "SlideViews.h"

@implementation SlideViews
@synthesize views = _views;
@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;
@synthesize currentPage = _currentPage;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}



-(id) initWithViews:(NSArray*) vws Frame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        self.scrollView.delegate = self;
        
        self.views = vws;
        for (int i=0 ; i<vws.count; i++) {
            
            UIView* vw =  [[UIView alloc] initWithFrame:CGRectMake(i * frame.size.width, 0, frame.size.width, frame.size.height)];
            [vw addSubview:[vws objectAtIndex:i]];
            [self.scrollView addSubview:vw];
            [vw release];
        }
        self.scrollView.contentSize = CGSizeMake(frame.size.width *vws.count, frame.size.height);
        
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake( frame.size.width/2-20, frame.size.height - 37, 39, 37)];
        self.pageControl.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [self.pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
        
        [self addSubview:self.scrollView];
        [self addSubview:self.pageControl];
        self.pageControl.numberOfPages = vws.count;
        
        if (self.pageControl.numberOfPages <2) {self.pageControl.alpha = 0.0;}
        self.scrollView.directionalLockEnabled = YES;
        self.scrollView.alwaysBounceVertical = NO;
        self.scrollView.pagingEnabled = YES;
        self.scrollView.showsHorizontalScrollIndicator = NO;
        [self.scrollView setBounces:NO];
    }
    return self;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.currentPage = page;
    self.pageControl.currentPage = page;
    
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    [self scrollViewDidEndDecelerating:scrollView];
}

- (void)changePage:(id)sender
{
    int curPage = self.pageControl.currentPage;
    int nextPage = curPage + 1;
    
    CGRect rect = ((UIView *)[self.containerViews objectAtIndex:nextPage]).frame;
    [self.scrollView scrollRectToVisible:rect animated:YES];
}

-(void)dealloc{

    [self.views release];
    [self.scrollView release];
    [self.pageControl release];
    [super dealloc];
}

@end
