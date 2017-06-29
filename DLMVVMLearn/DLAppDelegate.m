//
//  AppDelegate.m
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/27.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLAppDelegate.h"
#import "DLNavigationControllerStack.h"
#import "DLViewModelServicesImpl.h"
#import "DLViewModel.h"
#import "DLLoginViewModel.h"

@interface DLAppDelegate ()

@property (nonatomic, strong) DLViewModelServicesImpl *services;
@property (nonatomic, strong) DLViewModel *viewModel;

@property (nonatomic, strong, readwrite) DLNavigationControllerStack *navigationControllerStack;

@property (nonatomic, copy, readwrite) NSString *adURL;

@end

@implementation DLAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    AFNetworkActivityIndicatorManager.sharedManager.enabled = YES;
    
    self.services = [[DLViewModelServicesImpl alloc] init];
    self.navigationControllerStack = [[DLNavigationControllerStack alloc] initWithServices:self.services];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.services resetRootViewModel:[self createInitialViewModel]];
    
//    UIViewController *vc = [[UIViewController alloc] init];
//    vc.view.backgroundColor = [UIColor redColor];
//    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (DLViewModel *)createInitialViewModel {
    if ([SAMKeychain rawLogin].isExist && [SAMKeychain accessToken].isExist) {
//        OCTUser *user = [OCTUser dl_userWithRawLogin:[SAMKeychain rawLogin] server: OCTServer.dotComServer];
    }
//    } else {
        return [[DLLoginViewModel alloc] initWithServices:self.services params:nil];
//    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
