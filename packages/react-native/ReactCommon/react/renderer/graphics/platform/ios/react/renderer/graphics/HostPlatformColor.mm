/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "HostPlatformColor.h"

#import <Foundation/Foundation.h>
<<<<<<< HEAD
#import <React/RCTUIKit.h> // [macOS]
||||||| d4407d6f77a
#import <UIKit/UIKit.h>
=======
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <react/renderer/graphics/RCTPlatformColorUtils.h>
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
#import <react/utils/ManagedObjectWrapper.h>
#import <string>

using namespace facebook::react;

NS_ASSUME_NONNULL_BEGIN

namespace facebook::react {

namespace {
<<<<<<< HEAD
RCTUIColor *_Nullable UIColorFromInt32(int32_t intColor) // [macOS]
||||||| d4407d6f77a
UIColor *_Nullable UIColorFromInt32(int32_t intColor)
=======

bool UIColorIsP3ColorSpace(const std::shared_ptr<void> &uiColor)
{
  UIColor *color = unwrapManagedObject(uiColor);
  CGColorSpaceRef colorSpace = CGColorGetColorSpace(color.CGColor);

  if (CGColorSpaceGetModel(colorSpace) == kCGColorSpaceModelRGB) {
    CFStringRef name = CGColorSpaceGetName(colorSpace);
    if (name != NULL && CFEqual(name, kCGColorSpaceDisplayP3)) {
      return true;
    }
  }
  return false;
}

UIColor *_Nullable UIColorFromInt32(int32_t intColor)
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
{
  CGFloat a = CGFloat((intColor >> 24) & 0xFF) / 255.0;
  CGFloat r = CGFloat((intColor >> 16) & 0xFF) / 255.0;
  CGFloat g = CGFloat((intColor >> 8) & 0xFF) / 255.0;
  CGFloat b = CGFloat(intColor & 0xFF) / 255.0;
<<<<<<< HEAD
  return [RCTUIColor colorWithRed:r green:g blue:b alpha:a]; // [macOS]
||||||| d4407d6f77a
  return [UIColor colorWithRed:r green:g blue:b alpha:a];
=======

  UIColor *color = [UIColor colorWithRed:r green:g blue:b alpha:a];
  return color;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
}

RCTUIColor *_Nullable UIColorFromDynamicColor(const facebook::react::DynamicColor &dynamicColor) // [macOS]
{
  int32_t light = dynamicColor.lightColor;
  int32_t dark = dynamicColor.darkColor;
  int32_t highContrastLight = dynamicColor.highContrastLightColor;
  int32_t highContrastDark = dynamicColor.highContrastDarkColor;

  RCTUIColor *lightColor = UIColorFromInt32(light); // [macOS]
  RCTUIColor *darkColor = UIColorFromInt32(dark); // [macOS]
  RCTUIColor *highContrastLightColor = UIColorFromInt32(highContrastLight); // [macOS]
  RCTUIColor *highContrastDarkColor = UIColorFromInt32(highContrastDark); // [macOS]

  if (lightColor != nil && darkColor != nil) {
#if !TARGET_OS_OSX // [macOS]
    UIColor *color = [UIColor colorWithDynamicProvider:^UIColor *_Nonnull(UITraitCollection *_Nonnull collection) {
      if (collection.userInterfaceStyle == UIUserInterfaceStyleDark) {
        if (collection.accessibilityContrast == UIAccessibilityContrastHigh && highContrastDark != 0) {
          return highContrastDarkColor;
        } else {
          return darkColor;
        }
      } else {
        if (collection.accessibilityContrast == UIAccessibilityContrastHigh && highContrastLight != 0) {
          return highContrastLightColor;
        } else {
          return lightColor;
        }
      }
    }];
    return color;
#else // [macOS
    NSColor *color = [NSColor colorWithName:nil dynamicProvider:^NSColor * _Nonnull(NSAppearance * _Nonnull appearance) {
      NSMutableArray<NSAppearanceName> *appearances = [NSMutableArray arrayWithArray:@[NSAppearanceNameAqua,NSAppearanceNameDarkAqua]];
      if (highContrastLightColor != nil) {
        [appearances addObject:NSAppearanceNameAccessibilityHighContrastAqua];
      }
      if (highContrastDarkColor != nil) {
        [appearances addObject:NSAppearanceNameAccessibilityHighContrastDarkAqua];
      }
      NSAppearanceName bestMatchingAppearance = [appearance bestMatchFromAppearancesWithNames:appearances];
      if (bestMatchingAppearance == NSAppearanceNameAqua) {
        return lightColor;
      } else if (bestMatchingAppearance == NSAppearanceNameDarkAqua) {
        return darkColor;
      } else if (bestMatchingAppearance == NSAppearanceNameAccessibilityHighContrastAqua) {
        return highContrastLightColor;
      } else if (bestMatchingAppearance == NSAppearanceNameAccessibilityHighContrastDarkAqua) {
        return highContrastDarkColor;
      } else {
        return lightColor;
      }
    }];
    return color;
#endif // macOS]
  } else {
    return nil;
  }

  return nil;
}

<<<<<<< HEAD
int32_t ColorFromUIColor(RCTUIColor *color) // [macOS]
||||||| d4407d6f77a
int32_t ColorFromUIColor(UIColor *color)
=======
int32_t ColorFromColorComponents(const facebook::react::ColorComponents &components)
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
{
  float ratio = 255;
<<<<<<< HEAD
  CGFloat rgba[4];
#if !TARGET_OS_OSX // [macOS
  [color getRed:&rgba[0] green:&rgba[1] blue:&rgba[2] alpha:&rgba[3]];
#else // [macOS
  // [NSColor getRed:green:blue:alpha]` wil throw an exception if the colorspace is not SRGB,
  [[color colorUsingColorSpace:[NSColorSpace genericRGBColorSpace]] getRed:&rgba[0] green:&rgba[1] blue:&rgba[2] alpha:&rgba[3]];
#endif // macOS]
  return ((int32_t)round((float)rgba[3] * ratio) & 0xff) << 24 | ((int)round((float)rgba[0] * ratio) & 0xff) << 16 |
      ((int)round((float)rgba[1] * ratio) & 0xff) << 8 | ((int)round((float)rgba[2] * ratio) & 0xff);
||||||| d4407d6f77a
  CGFloat rgba[4];
  [color getRed:&rgba[0] green:&rgba[1] blue:&rgba[2] alpha:&rgba[3]];
  return ((int32_t)round((float)rgba[3] * ratio) & 0xff) << 24 | ((int)round((float)rgba[0] * ratio) & 0xff) << 16 |
      ((int)round((float)rgba[1] * ratio) & 0xff) << 8 | ((int)round((float)rgba[2] * ratio) & 0xff);
=======
  auto color = ((int32_t)round((float)components.alpha * ratio) & 0xff) << 24 |
      ((int)round((float)components.red * ratio) & 0xff) << 16 |
      ((int)round((float)components.green * ratio) & 0xff) << 8 | ((int)round((float)components.blue * ratio) & 0xff);
  return color;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
}

int32_t ColorFromUIColor(UIColor *color)
{
  CGFloat rgba[4];
  [color getRed:&rgba[0] green:&rgba[1] blue:&rgba[2] alpha:&rgba[3]];
  return ColorFromColorComponents({(float)rgba[0], (float)rgba[1], (float)rgba[2], (float)rgba[3]});
}

int32_t ColorFromUIColorForSpecificTraitCollection(
    const std::shared_ptr<void> &uiColor,
    UITraitCollection *traitCollection)
{
  RCTUIColor *color = (RCTUIColor *)unwrapManagedObject(uiColor); // [macOS]
  if (color) {
<<<<<<< HEAD
#if !TARGET_OS_OSX // [macOS]
    UITraitCollection *currentTraitCollection = [UITraitCollection currentTraitCollection];
    color = [color resolvedColorWithTraitCollection:currentTraitCollection];
#endif // [macOS]
||||||| d4407d6f77a
    UITraitCollection *currentTraitCollection = [UITraitCollection currentTraitCollection];
    color = [color resolvedColorWithTraitCollection:currentTraitCollection];
=======
    color = [color resolvedColorWithTraitCollection:traitCollection];
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
    return ColorFromUIColor(color);
  }

  return 0;
}

<<<<<<< HEAD
RCTUIColor *_Nullable UIColorFromComponentsColor(const facebook::react::ColorComponents &components) // [macOS]
||||||| d4407d6f77a
UIColor *_Nullable UIColorFromComponentsColor(const facebook::react::ColorComponents &components)
=======
int32_t ColorFromUIColor(const std::shared_ptr<void> &uiColor)
{
  return ColorFromUIColorForSpecificTraitCollection(uiColor, [UITraitCollection currentTraitCollection]);
}

UIColor *_Nullable UIColorFromComponentsColor(const facebook::react::ColorComponents &components)
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
{
  UIColor *uiColor = nil;
  if (components.colorSpace == ColorSpace::DisplayP3) {
<<<<<<< HEAD
    return [RCTUIColor colorWithDisplayP3Red:components.red // [macOS]
                                       green:components.green
                                        blue:components.blue
                                       alpha:components.alpha];
||||||| d4407d6f77a
    return [UIColor colorWithDisplayP3Red:components.red
                                    green:components.green
                                     blue:components.blue
                                    alpha:components.alpha];
=======
    uiColor = [UIColor colorWithDisplayP3Red:components.red
                                       green:components.green
                                        blue:components.blue
                                       alpha:components.alpha];
  } else {
    uiColor = [UIColor colorWithRed:components.red green:components.green blue:components.blue alpha:components.alpha];
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
  }
<<<<<<< HEAD
  return [RCTUIColor colorWithRed:components.red green:components.green blue:components.blue alpha:components.alpha]; // [macOS]
||||||| d4407d6f77a
  return [UIColor colorWithRed:components.red green:components.green blue:components.blue alpha:components.alpha];
=======

  return uiColor;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
}

int32_t hashFromUIColor(const std::shared_ptr<void> &uiColor)
{
  if (uiColor == nullptr) {
    return 0;
  }

  static UITraitCollection *darkModeTraitCollection =
      [UITraitCollection traitCollectionWithUserInterfaceStyle:UIUserInterfaceStyleDark];
  auto darkColor = ColorFromUIColorForSpecificTraitCollection(uiColor, darkModeTraitCollection);

  static UITraitCollection *lightModeTraitCollection =
      [UITraitCollection traitCollectionWithUserInterfaceStyle:UIUserInterfaceStyleLight];
  auto lightColor = ColorFromUIColorForSpecificTraitCollection(uiColor, lightModeTraitCollection);

  static UITraitCollection *darkModeAccessibilityContrastTraitCollection =
      [UITraitCollection traitCollectionWithTraitsFromCollections:@[
        darkModeTraitCollection,
        [UITraitCollection traitCollectionWithAccessibilityContrast:UIAccessibilityContrastHigh]
      ]];
  auto darkAccessibilityContrastColor =
      ColorFromUIColorForSpecificTraitCollection(uiColor, darkModeAccessibilityContrastTraitCollection);

  static UITraitCollection *lightModeAccessibilityContrastTraitCollection =
      [UITraitCollection traitCollectionWithTraitsFromCollections:@[
        lightModeTraitCollection,
        [UITraitCollection traitCollectionWithAccessibilityContrast:UIAccessibilityContrastHigh]
      ]];
  auto lightAccessibilityContrastColor =
      ColorFromUIColorForSpecificTraitCollection(uiColor, lightModeAccessibilityContrastTraitCollection);
  return facebook::react::hash_combine(
      darkColor,
      lightColor,
      darkAccessibilityContrastColor,
      lightAccessibilityContrastColor,
      UIColorIsP3ColorSpace(uiColor));
}

} // anonymous namespace

Color::Color(int32_t color)
{
  uiColor_ = wrapManagedObject(UIColorFromInt32(color));
  uiColorHashValue_ = facebook::react::hash_combine(color, 0);
}

Color::Color(const DynamicColor &dynamicColor)
{
  uiColor_ = wrapManagedObject(UIColorFromDynamicColor(dynamicColor));
  uiColorHashValue_ = facebook::react::hash_combine(
      dynamicColor.darkColor,
      dynamicColor.lightColor,
      dynamicColor.highContrastDarkColor,
      dynamicColor.highContrastLightColor,
      0);
}

Color::Color(const ColorComponents &components)
{
  uiColor_ = wrapManagedObject(UIColorFromComponentsColor(components));
  uiColorHashValue_ = facebook::react::hash_combine(
      ColorFromColorComponents(components), components.colorSpace == ColorSpace::DisplayP3);
}

Color::Color(std::shared_ptr<void> uiColor)
{
  UIColor *color = ((UIColor *)unwrapManagedObject(uiColor));
  if (color) {
    auto colorHash = hashFromUIColor(uiColor);
    uiColorHashValue_ = colorHash;
  }
  uiColor_ = std::move(uiColor);
}

bool Color::operator==(const Color &other) const
{
  return (!uiColor_ && !other.uiColor_) ||
      (uiColor_ && other.uiColor_ && (uiColorHashValue_ == other.uiColorHashValue_));
}

bool Color::operator!=(const Color &other) const
{
  return !(*this == other);
}

int32_t Color::getColor() const
{
  return ColorFromUIColor(uiColor_);
}

float Color::getChannel(int channelId) const
{
  CGFloat rgba[4];
  RCTUIColor *color = (__bridge RCTUIColor *)getUIColor().get(); // [macOS]
  [color getRed:&rgba[0] green:&rgba[1] blue:&rgba[2] alpha:&rgba[3]];
  return static_cast<float>(rgba[channelId]);
}

int32_t Color::getUIColorHash() const
{
  return uiColorHashValue_;
}

Color Color::createSemanticColor(std::vector<std::string> &semanticItems)
{
  auto semanticColor = RCTPlatformColorFromSemanticItems(semanticItems);
  return Color(wrapManagedObject(semanticColor));
}

} // namespace facebook::react

NS_ASSUME_NONNULL_END
