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

@property (weak, nonatomic) IBOutlet UIImageView *usernameImageView;
@property (weak, nonatomic) IBOutlet UIImageView *passwordImageView;

@property (nonatomic, strong, readonly) DLLoginViewModel *viewModel;

@end

@implementation DLLoginViewController

@dynamic viewModel;

- (void)viewDidLoad {
    [super viewDidLoad];

    self.avatarButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.avatarButton.layer.borderWidth = 2.0f;

    self.avatarButton.imageView.contentMode = UIViewContentModeScaleAspectFit;

//    self.usernameImageView.image = [UIImage octicon_imageWithIdentifier:@"Person" size:CGSizeMake(22, 22)];
    self.passwordImageView.image = [UIImage octicon_imageWithIdentifier:@"Lock" size:CGSizeMake(22, 22)];
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
