/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

<<<<<<< HEAD
#import <RCTAppDelegate.h>
#import <React/RCTUIKit.h> // [macOS]
||||||| d4407d6f77a
#import <RCTAppDelegate.h>
#import <UIKit/UIKit.h>
=======
#import <RCTDefaultReactNativeFactoryDelegate.h>
#import <RCTReactNativeFactory.h>
#import <UIKit/UIKit.h>
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

@interface AppDelegate : RCTDefaultReactNativeFactoryDelegate <UIApplicationDelegate>

@property (nonatomic, strong, nonnull) UIWindow *window;
@property (nonatomic, strong, nonnull) RCTReactNativeFactory *reactNativeFactory;

@end
