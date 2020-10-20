//
//  dragginfView.m
//  dragViewsApp
//
//  Created by Admin on 17.10.2020.
//  Copyright © 2020 DmitryChaschin. All rights reserved.
//

#import "dragginfView.h"

@implementation dragginfView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)removeFromSuperview {
    [dragginfView animateWithDuration:0.3 delay:0 options:0 animations:^{
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
        
    } completion:^(BOOL finished) {
        if (finished){
            [super removeFromSuperview];
        }
    }];
}
@end
