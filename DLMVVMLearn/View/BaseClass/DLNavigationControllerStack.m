//
//  DLNavigationControllerStack.m
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLNavigationControllerStack.h"
#import "DLAppDelegate.h"

@interface DLNavigationControllerStack () <UINavigationControllerDelegate>

@property (nonatomic, strong) id<DLViewModelServices> services;
@property (nonatomic, strong) NSMutableArray *navigationControllers;

@end

@implementation DLNavigationControllerStack

- (instancetype)initWithServices:(id<DLViewModelServices>)services {
    if (self = [super init]) {
        self.services = services;
        self.navigationControllers = [[NSMutableArray alloc] init];
        [self registerNavigationHooks];
    }
    return self;
}

- (void)pushNavigationController:(UINavigationController *)navigationController {
    if ([self.navigationControllers containsObject:navigationController]) return;
    navigationController.delegate = self;
    [self.navigationControllers addObject:navigationController];
}

- (UINavigationController *)popNavigationController {
    UINavigationController *navigationController = self.navigationControllers.lastObject;
    [self.navigationControllers removeLastObject];
    return navigationController;
}

- (UINavigationController *)topNavigationController {
    return self.navigationControllers.lastObject;
}

- (void)registerNavigationHooks {
//    @weakify(self)
    
    
    [[(NSObject *)self.services
        rac_signalForSelector:@selector(resetRootViewModel:)]
        subscribeNext:^(RACTuple *tuple) {
            
            NSLog(@"tuple-------_> %@", tuple);
            
            UIViewController *vc = [[UIViewController alloc] init];
            vc.view.backgroundColor = [UIColor yellowColor];

            DLSharedAppDelegate.window.rootViewController = vc;
        }];
    
    
//    [[(NSObject *)self.services
//        rac_signalForSelector:@selector(resetRootViewModel:)]
//        subscribeNext:^(RACTuple *tuple) {
////            @strongify(self)
//            [self.navigationControllers removeAllObjects];
//
////            UIViewController *viewController = (UIViewController *)
//            
////            DLSharedAppDelegate.window.rootViewController = vc;
//            DLSharedAppDelegate.window.rootViewController = [[UIViewController alloc] init];
//        }];
}

@end
