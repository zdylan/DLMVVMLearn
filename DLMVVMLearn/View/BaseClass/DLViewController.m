//
//  DLViewController.m
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLViewController.h"

@interface DLViewController () <UIGestureRecognizerDelegate>

@property (nonatomic, strong, readwrite) DLViewModel *viewModel;
@property (nonatomic, strong, readwrite) UIPercentDrivenInteractiveTransition *interactivePopTransition;

@end

@implementation DLViewController

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    DLViewController *viewController = [super allocWithZone:zone];

//    @weakify(viewController)
    [[viewController
      rac_signalForSelector:@selector(viewDidLoad)]
      subscribeNext:^(id x) {
//          @strongify(viewController)
          [viewController bindViewModel];
      }];
    return viewController;
}

- (DLViewController *)initWithViewModel:(id)viewModel {
    if (self = [super init]) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.automaticallyAdjustsScrollViewInsets = NO;
    self.extendedLayoutIncludesOpaqueBars = YES;

    if (self.navigationController != nil && self != self.navigationController.viewControllers.firstObject) {
        UIPanGestureRecognizer *popRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePopRecognizer:)];
        [self.view addGestureRecognizer:popRecognizer];
        popRecognizer.delegate = self;
    }
}

- (void)bindViewModel {
    RAC(self, title) = RACObserve(self.viewModel, title);

//    UIView *titleView = self.navigationItem.titleView;
    
//    @weakify(self)
    [self.viewModel.errors subscribeNext:^(NSError *error) {
//        @strongify(self)

        DLLogError(error);

//        if ([error.domain])
    }];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    [self.viewModel.willDisappearSignal sendNext:nil];

    if ([self isMovingToParentViewController]) {
        self.snapshot = [self.navigationController.view snapshotViewAfterScreenUpdates:NO];
    }
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [UIDevice currentDevice].isPad ? UIInterfaceOrientationMaskAll : UIInterfaceOrientationMaskPortrait;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - UIPanGestureRecognizer handlers
- (void)handlePopRecognizer:(UIPanGestureRecognizer *)recognizer {
    
}

#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)recognizer {
    return [recognizer velocityInView:self.view].x > 0;
}

@end
