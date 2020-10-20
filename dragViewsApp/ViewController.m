//
//  ViewController.m
//  dragViewsApp
//
//  Created by Admin on 15.10.2020.
//  Copyright © 2020 DmitryChaschin. All rights reserved.
//
#import "DCHole.h"
#import "DCObject.h"
#import "ViewController.h"
#import "dragginfView.h"
#import "sss.h"

@interface ViewController ()
@property (weak,nonatomic) UIImageView* starView;
@property (assign, nonatomic) CGPoint starViewStartPoint;
@property (weak,nonatomic) UIImageView* bwStarView;
@property (strong, nonatomic) NSArray* colorStarImages;
@property (assign, nonatomic) NSInteger numberOfColorStars;


@property (weak, nonatomic) UIImageView* circleView;
@property (assign, nonatomic) CGPoint circleViewStartPoint;
@property (weak, nonatomic) UIImageView* bwCircleView;
@property (strong,nonatomic) NSArray* colorCircleImages;
@property (assign, nonatomic) NSInteger numberOfColorCircles;


@property (weak, nonatomic) UIImageView* squareView;
@property (assign, nonatomic) CGPoint squareViewStartPoint;
@property (weak, nonatomic) UIImageView* bwSquareView;
@property (strong, nonatomic) NSArray* colorSquareImages;
@property (assign, nonatomic) NSInteger numberOfColorSquares;

@property (weak, nonatomic) UIView* draggingView;
@property (assign, nonatomic) CGPoint touchOffset;
@property (assign, nonatomic) BOOL isTouched;
@property (strong, nonatomic) UIImageView* testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view = self.draggingView;
#pragma mark: - CREATE IMAGES -
//    UIView* testView = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 200, 200)];
//        testView.backgroundColor = [UIColor cyanColor];
//        [self.view addSubview:testView];
//    [self.view bringSubviewToFront:testView];
   

//
//    self.testView = [[sss alloc] initWithFrame:CGRectMake(200, 200, 200, 200)];
//    self.testView.backgroundColor = [UIColor cyanColor];
//    [self.view addSubview:self.testView];
    
    
    //STAR
    UIImage* ColorStar1 = [UIImage imageNamed:@"ColorStar1"];
    UIImage* ColorStar2 = [UIImage imageNamed:@"ColorStar2"];
    UIImage* ColorStar3 = [UIImage imageNamed:@"ColorStar3"];
    
    UIImage* BWStar1 = [UIImage imageNamed:@"BWStar1"];
    UIImage* BWStar2 = [UIImage imageNamed:@"BWStar2"];
    UIImage* BWStar3 = [UIImage imageNamed:@"BWStar3"];
    
    //SQURE
    UIImage* ColorSquare1 = [UIImage imageNamed:@"ColorSquare1"];
    UIImage* ColorSquare2 = [UIImage imageNamed:@"ColorSquare2"];
    UIImage* ColorSquare3 = [UIImage imageNamed:@"ColorSquare3"];
    
    UIImage* BWSquare1 = [UIImage imageNamed:@"BWSquare1"];
    UIImage* BWSquare2 = [UIImage imageNamed:@"BWSquare2"];
    UIImage* BWSquare3 = [UIImage imageNamed:@"BWSquare3"];
    
    // Circle
    UIImage* ColorCircle1 = [UIImage imageNamed:@"ColorCircle1"];
    UIImage* ColorCircle2 = [UIImage imageNamed:@"ColorCircle2"];
    UIImage* ColorCircle3 = [UIImage imageNamed:@"ColorCircle3"];
    
    UIImage* BWCircle1 = [UIImage imageNamed:@"BWCircle1"];
    UIImage* BWCircle2 = [UIImage imageNamed:@"BWCircle2"];
    UIImage* BWCircle3 = [UIImage imageNamed:@"BWCircle3"];
    
#pragma mark : - COLOR ELEMENTS
    //MAKE COLOR ELEMENTS
    
    //COLOR STAR
    self.colorStarImages = [NSArray arrayWithObjects:ColorStar1,ColorStar2,ColorStar3, nil];
    UIImageView* starImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 450, 100, 100)];
    //self.starViewStartPoint = CGPointMake(0, 450);
    
    starImageView.animationImages = self.colorStarImages;
    starImageView.animationDuration = 0.4f;
    [starImageView startAnimating];
    starImageView.userInteractionEnabled = TRUE;
    starImageView.tag = 100;
    starImageView.multipleTouchEnabled = FALSE;
    self.numberOfColorStars = 0;
    
    //COLOR CIRCLE
    self.colorCircleImages = [NSArray arrayWithObjects:ColorCircle1,ColorCircle2,ColorCircle3, nil];
    UIImageView* colorCircleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 450, 100, 100)];
    //self.circleViewStartPoint = CGPointMake(100, 450);
    
    colorCircleImageView.animationImages = self.colorCircleImages;
    colorCircleImageView.animationDuration = 0.4f;
    [colorCircleImageView startAnimating];
    colorCircleImageView.userInteractionEnabled = TRUE;
    colorCircleImageView.tag = 200;
    colorCircleImageView.multipleTouchEnabled = FALSE;
    self.numberOfColorCircles = 0;
    
    //COLOR SQARE
    
    self.colorSquareImages = [NSArray arrayWithObjects:ColorSquare1,ColorSquare2,ColorSquare3, nil];
    UIImageView * colorSqareImageView  = [[UIImageView alloc] initWithFrame:CGRectMake(200, 450, 100, 100)];
    //self.squareViewStartPoint = CGPointMake(200, 450);
    
    colorSqareImageView.animationImages = self.colorSquareImages;
    colorSqareImageView.animationDuration = 0.4f;
    [colorSqareImageView startAnimating];
    colorSqareImageView.userInteractionEnabled = TRUE;
    colorSqareImageView.tag = 300;
    colorSqareImageView.multipleTouchEnabled = FALSE;
    self.numberOfColorSquares = 0;
#pragma mark: - BLACK&WHITE ELEMENTS
    //Create a BW elements
    
    
    //BW STAR
    NSArray* bwStarImages = [NSArray arrayWithObjects:BWStar1,BWStar2,BWStar3, nil];
    UIImageView* bwStarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 25, 100, 100)];
    
    bwStarImageView.animationImages = bwStarImages;
    bwStarImageView.animationDuration = 0.4f;
    [bwStarImageView startAnimating];
    bwStarImageView.tag = 100;
    
    // BW CIRCLE
    NSArray* bwCircleImages = [NSArray arrayWithObjects:BWCircle1,BWCircle2,BWCircle3, nil];
    UIImageView* bwCircleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 25, 100, 100)];
    
    bwCircleImageView.animationImages = bwCircleImages;
    bwCircleImageView.animationDuration = 0.4f;
    [bwCircleImageView startAnimating];
    bwCircleImageView.tag = 200;

    //BW Sqare
    NSArray* bwSqareImages = [NSArray arrayWithObjects:BWSquare1,BWSquare2,BWSquare3, nil];
    UIImageView* bwSqareImageView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 25, 100, 100)];

    bwSqareImageView.animationImages = bwSqareImages;
    bwSqareImageView.animationDuration = 0.4f;
    [bwSqareImageView startAnimating];
    bwSqareImageView.tag = 300;
    
#pragma mark: - addSubViews -
    
    // COLOR STAR
    [self.view addSubview:starImageView];
    self.starView = starImageView;
    self.starView.multipleTouchEnabled = FALSE;
    
    //BW STAR
    [self.view addSubview:bwStarImageView];
    self.bwStarView = bwStarImageView;
    
    //CIRCLE
    [self.view addSubview:colorCircleImageView];
    self.circleView = colorCircleImageView;
    self.circleView.multipleTouchEnabled = FALSE;
    //BW Circle
    [self.view addSubview:bwCircleImageView];
    self.bwCircleView = bwCircleImageView;
    
    //SQARE
    [self.view addSubview:colorSqareImageView];
    self.squareView = colorSqareImageView;
    self.squareView.multipleTouchEnabled = FALSE;
    
    //BW Sqare
    [self.view addSubview:bwSqareImageView];
    self.bwSquareView = bwSqareImageView;
    
}

#pragma mark : - touchesBEGAN -
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch* touch = [touches anyObject];
    CGPoint pointOnMainView = [touch locationInView:self.view];
    UIView* view = [self.view hitTest:pointOnMainView withEvent:event];
    
    if (![view isEqual:self.view]) {
        
        self.draggingView = view;
        [self.view bringSubviewToFront:self.draggingView];
        CGPoint touchPoint = [touch locationInView:self.draggingView];
        self.touchOffset = CGPointMake(CGRectGetMidX(self.draggingView.bounds) - touchPoint.x,
                                       CGRectGetMidY(self.draggingView.bounds) - touchPoint.y);
        
        [UIView animateWithDuration:0.3 delay:0 options: UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState
            animations:^{
            
            CGAffineTransform rotation = CGAffineTransformMakeRotation(M_PI);
            
            CGAffineTransform scale = CGAffineTransformMakeScale(1.2f, 1.2f);
            
            self.draggingView.transform = CGAffineTransformConcat(rotation, scale);
            self.draggingView.alpha = 0.3;
        } completion:^(BOOL finished) {
            
        }];
       
    } else {
        self.draggingView = nil;
    }
}

#pragma mark : - touchesMOVED -
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
 self.isTouched = TRUE;
    UITouch* touch = [touches anyObject];
    CGPoint pointOnMainView = [touch locationInView:self.view];
    
    //получаем точки прикосновения к нашим ЧБ view
    CGPoint pointOnBwCircleView = [touch locationInView:self.bwCircleView];
    CGPoint pointOnBwStarView = [touch locationInView:self.bwStarView];
    CGPoint pointOnBwSquareView = [touch locationInView:self.bwSquareView];
    
    CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
                                     pointOnMainView.y + self.touchOffset.y);
    
    //если цветная совпала с черно-белой то удаляем цветную
    //и внизу создаем еще одну цветную
    
    self.draggingView.center = correction;
    //проверяем если наша переносимая вью сопоставимо по тэгу с чб вью то она такая же только другого цвета
   
    if ([self.bwCircleView pointInside:pointOnBwCircleView withEvent:event] && (self.bwCircleView.tag == self.draggingView.tag)) {
        NSLog(@"bingo Circle!");
        self.isTouched = TRUE;
        [self touchesEnded: touches withEvent:event];
        
          UIImageView* colorCircleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 450, 100, 100)];
          
          colorCircleImageView.animationImages = self.colorCircleImages;
          colorCircleImageView.animationDuration = 0.4f;
          [colorCircleImageView startAnimating];
          colorCircleImageView.userInteractionEnabled = TRUE;
          colorCircleImageView.tag = 200;
        if (self.numberOfColorCircles <= 1) {
        [self.view addSubview:colorCircleImageView];
        self.circleView = colorCircleImageView;
                self.numberOfColorCircles += 1;
        } else {
            NSLog(@" circles > 1");
        }
    }
    
    if ([self.bwStarView pointInside:pointOnBwStarView withEvent:nil] && (self.bwStarView.tag == self.draggingView.tag)) {
        
        NSLog(@"bingo Star!");
        
        self.isTouched = TRUE;
              [self touchesEnded: touches withEvent:event];
              
                   UIImageView* starImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 450, 100, 100)];
                 //self.starViewStartPoint = CGPointMake(0, 450);
                 
                 starImageView.animationImages = self.colorStarImages;
                 starImageView.animationDuration = 0.4f;
                 [starImageView startAnimating];
                 starImageView.userInteractionEnabled = TRUE;
                 starImageView.tag = 100;
        

              if (self.numberOfColorStars <= 1) {
              [self.view addSubview:starImageView];
              self.circleView = starImageView;
                      self.numberOfColorStars += 1;
              } else {
                  NSLog(@" stars > 1");
              }
    }
    
    
    
    if ([self.bwSquareView pointInside:pointOnBwSquareView withEvent:event] && (self.bwSquareView.tag == self.draggingView.tag)) {
        self.isTouched = TRUE;
                   [self touchesEnded: touches withEvent:event];
                   
                      UIImageView* colorSqareImageView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 450, 100, 100)];
                      //self.squareViewStartPoint = CGPointMake(200, 450);
                      
        colorSqareImageView.animationImages = self.colorSquareImages;
                      colorSqareImageView.animationDuration = 0.4f;
                      [colorSqareImageView startAnimating];
                      colorSqareImageView.userInteractionEnabled = TRUE;
                      colorSqareImageView.tag = 300;
             

                   if (self.numberOfColorSquares <= 1) {
                   [self.view addSubview:colorSqareImageView];
                   self.circleView = colorSqareImageView;
                           self.numberOfColorSquares += 1;
                   } else {
                       NSLog(@" squares > 1");
                   }
        
    }
    
    ////
    
    
    self.draggingView.center = correction;
    if (self.draggingView ) {
    }
    [UIView animateWithDuration:0.3 delay:0 options: UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
      
        if (self.isTouched){
            self.draggingView.transform = CGAffineTransformMakeRotation(M_PI);
        } else {
            self.draggingView.transform = CGAffineTransformMakeRotation(M_PI_2);
        }
    } completion:^(BOOL finished) {
        if (!finished) {
           // self.isTouched = !self.isTouched;
            
        } else {
            
            //self.isTouched = !self.isTouched;
        }
        
    }];
    self.draggingView.center = correction;
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   UITouch* touch = [touches anyObject];
    //CGPoint pointOnMainView = [touch locationInView:self.view];
    
    //получаем точки прикосновения к нашим ЧБ view
    CGPoint pointOnBwCircleView = [touch locationInView:self.bwCircleView];
    CGPoint pointOnBwStarView = [touch locationInView:self.bwStarView];
    CGPoint pointOnBwSquareView = [touch locationInView:self.bwSquareView];
    
//    CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
//                                     pointOnMainView.y + self.touchOffset.y);
    
    //если цветная совпала с черно-белой то удаляем цветную
    //и внизу создаем еще одну цветную
    
    //** self.draggingView.center = correction;
    //проверяем если наша переносимая вью сопоставимо по тэгу с чб вью то она такая же только другого цвета
   
    if ([self.bwCircleView pointInside:pointOnBwCircleView withEvent:event] && (self.bwCircleView.tag == self.draggingView.tag)) {
    
    if (self.isTouched){
        
        [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{
            self.draggingView.transform = CGAffineTransformMakeScale(0.1, 0.1);
        } completion:^(BOOL finished) {
            //NSLog(@"TYT!");
            if (finished) {
                
                [self.draggingView removeFromSuperview];
                self.numberOfColorCircles -= 1;
            }
        }];
    }
    }
    else if ([self.bwStarView pointInside:pointOnBwStarView withEvent:event] && (self.bwStarView.tag == self.draggingView.tag)) {
        
        if (self.isTouched){
              
              [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{
                  self.draggingView.transform = CGAffineTransformMakeScale(0.1, 0.1);
              } completion:^(BOOL finished) {
                 // NSLog(@"TYT!");
                  if (finished) {
                      
                      [self.draggingView removeFromSuperview];
                      self.numberOfColorStars -= 1;
                  }
              }];
          }
        
    } else if ([self.bwSquareView pointInside:pointOnBwSquareView withEvent:event] && (self.bwSquareView.tag == self.draggingView.tag)) {
        if (self.isTouched){
                   
                   [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{
                       self.draggingView.transform = CGAffineTransformMakeScale(0.1, 0.1);
                   } completion:^(BOOL finished) {
                      // NSLog(@"TYT!");
                       if (finished) {
                           
                           [self.draggingView removeFromSuperview];
                           self.numberOfColorSquares -= 1;
                       }
                   }];
               }
    }
    
    else {
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                self.draggingView.transform = CGAffineTransformIdentity;
                self.draggingView.alpha = 1.f;
            } completion:^(BOOL finished) {
            }];
    }
//
    //self.isTouched = FALSE;
}

//- (UIView)



@end
