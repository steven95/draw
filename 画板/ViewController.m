//
//  ViewController.m
//  画板
//
//  Created by Jusive on 15/11/27.
//  Copyright © 2015年 Jusive. All rights reserved.
//

#import "ViewController.h"
#import "dbView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet dbView *dbView;
@end

@implementation ViewController
- (IBAction)colorChange:(UIButton*)sender {
    self.dbView.color = sender.backgroundColor;
    
}
- (IBAction)voluechange:(UISlider *)sender {
    self.dbView.lineWidth = sender.value;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
