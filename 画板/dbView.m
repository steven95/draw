//
//  dbView.m
//  画板
//
//  Created by Jusive on 15/11/27.
//  Copyright © 2015年 Jusive. All rights reserved.
//

#import "dbView.h"
#import  "DrawPath.h"
@interface dbView ()
@property (nonatomic,strong) NSMutableArray *path;
@property (nonatomic,strong)DrawPath *paths;
@end
@implementation dbView

-(NSMutableArray *)path{
    if (_path == nil) {
        _path = [NSMutableArray array];
    }
    return _path;
}
-(void)awakeFromNib{
    self.lineWidth = 1;
    self.color = [UIColor blackColor];
}

-(CGPoint)pointWithtouches:(NSSet *)touches{
    UITouch *touch = [touches anyObject];
    return [touch locationInView:self];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint curP = [self pointWithtouches:touches];
    DrawPath *path = [DrawPath pathWithColor:self.color lineWidth:self.lineWidth];
    [path moveToPoint:curP];
    self.paths = path;
    [self.path addObject:path];
    
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint curp = [self pointWithtouches:touches];
    [self.paths addLineToPoint:curp];
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    if (self.path.count == 0) return;
    for (DrawPath *path in self.path) {
        [path.color set];
        [path stroke];
    }

}
@end
