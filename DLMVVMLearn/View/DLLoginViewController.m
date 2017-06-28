//
//  DLLoginViewController.m
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLLoginViewController.h"
#import "DLLoginViewModel.h"

@interface DLLoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *avatarButton;

@property (nonatomic, strong, readonly) DLLoginViewModel *viewModel;

@end

@implementation DLLoginViewController

@dynamic viewModel;

- (void)viewDidLoad {
    [super viewDidLoad];

    self.avatarButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.avatarButton.layer.borderWidth = 2.0f;

    self.avatarButton.imageView.contentMode = UIViewContentModeScaleAspectFill;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)bindViewModel {
    [super bindViewModel];

    @weakify(self)
    [RACObserve(self.viewModel, avatarURL) subscribeNext:^(NSURL *avatarURL) {
        @strongify(self)
//        [self.avatarButton sd_]
        [self.avatarButton setImage:[UIImage imageNamed:@"avatar-default"] forState:UIControlStateNormal];
    }];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

@end
