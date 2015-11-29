//
//  DrawPath.m
//  画板
//
//  Created by Jusive on 15/11/28.
//  Copyright © 2015年 Jusive. All rights reserved.
//

#import "DrawPath.h"

@implementation DrawPath
+(instancetype)pathWithColor:(UIColor *)color lineWidth:(CGFloat)lineWidth{
    DrawPath *path = [[self alloc]init];
    path.color = color;
    path.lineWidth = lineWidth;
    return path;
}
@end
