//
//  ViewController.m
//  Squared_Up_fei
//
//  Created by Derek on 2017/5/21.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import "ViewController.h"
#import "SquareUpFBC.h"

#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_heght [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<SquareUpFBCdelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createSquare];
    
}
-(void)createSquare{
    
    SquareUpFBC *square = [[SquareUpFBC alloc] initWithBaseFrame:CGRectMake(0, 100, screen_width, 300) andNum_of_squareness:24 andNum_of_squareness_horizontal:7 andSquareness_width:40 andSquareness_height:40 andSquareness_padding_to_top:30 andSquareness_padding_to_left:20 andSquareness_padding_to_right:20 andSquareness_avage_distence_horizental:10 andSquareness_avage_distence_vertical:20];
    square.delegate = self;
    square.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:square];
}
-(void)whichViewIsTap:(UITapGestureRecognizer *)tapGestureRecognizer{
    
    NSLog(@"whichViewIsTap %ld,第%ld个", tapGestureRecognizer.view.tag,tapGestureRecognizer.view.tag - 10000);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
