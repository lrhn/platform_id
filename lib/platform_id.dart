// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "src/platform_unknown.dart"
    if (dart.library.io) "src/platform_io.dart"
    if (dart.library.html) "src/platform_html.dart" as p;

/// A string representing the operating system or platform.
String get operatingSystem => p.os;

/// A string representing the version of the operating system or platform.
///
/// May be empty if no version is known or available.
String get operatingSystemVersion => p.osVersion;

/// Whether the operating system is a version of
/// [Linux](https://en.wikipedia.org/wiki/Linux).
///
/// Identified by [operatingSystem] being the string `linux`.
///
/// This value is `false` if the operating system is a specialized
/// version of Linux that identifies itself by a different name,
/// for example Android (see [isAndroid]).
bool get isLinux => ("linux" == operatingSystem);

/// Whether the operating system is a version of
/// [macOS](https://en.wikipedia.org/wiki/MacOS).
///
/// Identified by [operatingSystem] being the string `macos`.
bool get isMacOS => ("macos" == operatingSystem);

/// Whether the operating system is a version of
/// [Microsoft Windows](https://en.wikipedia.org/wiki/Microsoft_Windows).
///
/// Identified by [operatingSystem] being the string `windows`.
bool get isWindows => ("windows" == operatingSystem);

/// Whether the operating system is a version of
/// [Android](https://en.wikipedia.org/wiki/Android_%28operating_system%29).
///
/// Identified by [operatingSystem] being the string `android`.
bool get isAndroid => ("android" == operatingSystem);

/// Whether the operating system is a version of
/// [iOS](https://en.wikipedia.org/wiki/IOS).
///
/// Identified by [operatingSystem] being the string `ios`.
bool get isIOS => ("ios" == operatingSystem);

/// Whether the operating system is a version of
/// [Fuchsia](https://en.wikipedia.org/wiki/Google_Fuchsia).
///
/// Identified by [operatingSystem] being the string `fuchsia`.
bool get isFuchsia => ("fuchsia" == operatingSystem);

/// Whether running in a web browser.
///
/// Identified by [operatingSystem] being the string `browser`.
///
/// If so, the [operatingSystemVersion] is the string made available
/// through `window.navigator.appVersion`.
bool get isBrowser => ("browser" == operatingSystem);