/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#pragma once

<<<<<<< HEAD
#import <React/RCTUIKit.h>
#import <react/renderer/graphics/HostPlatformColor.h>
||||||| d4407d6f77a
#import <UIKit/UIKit.h>
#import <react/renderer/graphics/HostPlatformColor.h>
=======
#import <UIKit/UIKit.h>
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
#import <vector>

namespace facebook {
namespace react {
struct ColorComponents;
struct Color;
} // namespace react
} // namespace facebook

facebook::react::ColorComponents RCTPlatformColorComponentsFromSemanticItems(
    std::vector<std::string>& semanticItems);
RCTUIColor* RCTPlatformColorFromSemanticItems( // [macOS]
    std::vector<std::string>& semanticItems);
RCTUIColor* RCTPlatformColorFromColor(const facebook::react::Color& color); // [macOS]
