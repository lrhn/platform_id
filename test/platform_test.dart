// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "package:platform/platform.dart";

import "package:test/test.dart";

void main() {
  test("Exists and is consistent", () {
    expect(operatingSystem, isNotNull);
    expect(operatingSystemVersion, isNotNull);

    expect(isLinux, operatingSystem == "linux");
    expect(isAndroid, operatingSystem == "android");
    expect(isMacOS, operatingSystem == "macos");
    expect(isWindows, operatingSystem == "windows");
    expect(isIOS, operatingSystem == "ios");
    expect(isFuchsia, operatingSystem == "fuchsia");
    expect(isBrowser, operatingSystem == "browser");
  });
}
