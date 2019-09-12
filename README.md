[![Build Status](https://travis-ci.org/lrhn/platform_id.svg?branch=master)](https://travis-ci.org/lrhn/platform_id)

Platform independent access to information about the current platform and run-time environment.

Exposes `operatingSystem` and `operatingSystemVersion`
strings similar to those of the `Platform` class in
`dart:io`, but also works on the web.
The `operatingSystem` of a browser is the string "browser".

To use this package instead of `dart:io`, replace
the import of `dart:io` with:
```dart
import "package:platform_id/platform_id.dart" as Platform;
```
That should keep the code working if all it uses is operating system detection.
You should then use your IDE to rename the import prefix from `Platform`
to something lower-cased which follows the style guide for import prefixes.

Any new platform which supports neither `dart:io` nor `dart:html`
can make itself recognizable by configuring
the `dart.platform.name` and `dart.platform.version` environment settings,
so that `const String.fromEnvironment` can access them.