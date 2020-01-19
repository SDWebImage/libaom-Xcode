# libaom + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/libaom-Xcode.svg?style=flat)](https://travis-ci.org/SDWebImage/libaom-Xcode)
[![Version](https://img.shields.io/cocoapods/v/libaom.svg?style=flat)](http://cocoapods.org/pods/libaom)
[![License](https://img.shields.io/cocoapods/l/libaom.svg?style=flat)](http://cocoapods.org/pods/libaom)
[![Platform](https://img.shields.io/cocoapods/p/libaom.svg?style=flat)](http://cocoapods.org/pods/libaom)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/SDWebImage/libaom-Xcode)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

A wrapper for [libaom](https://aomedia.googlesource.com/aom/) + Xcode project.
This enables Carthage && SwiftPM support.

This repo also including the CocoaPods's spec file to use libaom.

## Requirements

+ iOS 8
+ macOS 10.6
+ tvOS 9.0
+ watchOS 2.0

## Note

+ v1.0.2 is tagged with upstream `1.0.0-errata1-avif`
+ v1.0.1 && v1.0.0 is tagged with upstream `3563b12b` hash, which used by libheif dependency (no huge difference between `1.0.0-errata1`)

From v1.0.1, this Carthage and CocoaPods support, disable the architecture specify assembly code, and use the pure C implementation instead. This because both the lack support for CocoaPods and Xcode NASM compiler.

If you want the best performance for specify architecture, use the pre-build static library in `lib` from [1.0.0 release](https://github.com/SDWebImage/libaom-Xcode/releases/tag/1.0.0). Which use the CMake and NASM with the full assembly optimization.

## Installation

### Carthage

libaom is (via this repo) available through [Carthage](https://github.com/Carthage/Carthage).

```
github "SDWebImage/libaom-Xcode"
```

### CocoaPods

libaom is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'libaom'
```

### SwiftPM

libaom is available through [Swift Package Manager](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libaom-Xcode", from: "1.0.2")
    ],
    // ...
)
```

## Usage

Use libaom as you would normally, this is just a repo that adds an Xcode proj.

For Swift Package Manager user, it's recommended to use the modular import instead of C headers.

+ Objective-C

```objective-c
@import libaom;
// or if you don't use module
#import <aom/aom.h>
```

+ Swift

```swift
import libaom
```

## License

libaom is available under the [Alliance for Open Media Patent License](https://aomedia.org/license/software-license/).


