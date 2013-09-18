//
//  SlideViews.h
//  testjson
//
//  Created by Fleming Fu on 13-9-13.
//  Copyright (c) 2013年 anocomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideViews : UIView<UIScrollViewDelegate>
{


}
-(id) initWithViews:(NSArray*) vws Frame:(CGRect)frame;

@property (retain, nonatomic) NSArray *containerViews;
@property (retain, nonatomic) NSArray *views;
@property (retain, nonatomic) UIScrollView *scrollView;
@property (retain, nonatomic) UIPageControl *pageControl;
@property (assign, nonatomic) int currentPage;

@end
