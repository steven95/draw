//
//  DrawPath.h
//  画板
//
//  Created by Jusive on 15/11/28.
//  Copyright © 2015年 Jusive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawPath : UIBezierPath
@property (nonatomic,strong)UIColor *color;

+(instancetype)pathWithColor:(UIColor *)color lineWidth:(CGFloat)lineWidth;
@end
