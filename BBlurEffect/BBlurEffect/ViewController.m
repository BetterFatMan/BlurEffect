//
//  ViewController.m
//  BBlurEffect
//
//  Created by line0 on 15/8/20.
//  Copyright (c) 2015年 zhanglei. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()

@property (nonatomic, strong) UIVisualEffectView *visualEfView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark ---- 添加图片
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2)];
    [imageView setImage:[UIImage imageNamed:@"1.jpg"]];
    
#pragma mark ----blur效果
    self.visualEfView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    _visualEfView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/4);
    _visualEfView.alpha = 0.9;
    [imageView addSubview:_visualEfView];
    
    [self.view addSubview:imageView];
    
    UIImageView*me =[[UIImageView alloc] initWithFrame:CGRectMake(0,self.view.bounds.size.height/2,self.view.bounds.size.width,self.view.bounds.size.height/2)];
    [me setImage:[[UIImage imageNamed:@"1.jpg"] applyBlurWithRadius:5 tintColor:[UIColor colorWithWhite:1 alpha:0.3] saturationDeltaFactor:1.8 maskImage:nil]];
    [self.view addSubview:me];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
