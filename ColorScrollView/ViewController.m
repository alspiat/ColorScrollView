//
//  ViewController.m
//  ColorScrollView
//
//  Created by Алексей on 02.07.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.delegate = self;
    [self.scrollView setDecelerationRate:UIScrollViewDecelerationRateFast];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//MARK: - UIScrollView delegate methods

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
    if (targetContentOffset->x > scrollView.bounds.size.width / 2) {
        targetContentOffset->x = scrollView.bounds.size.width;
        self.view.backgroundColor = UIColor.blueColor;
    } else {
        targetContentOffset->x = 0;
        self.view.backgroundColor = UIColor.redColor;
    }
}

@end
