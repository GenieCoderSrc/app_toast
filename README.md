# app_toast

A simple Flutter package for displaying toast messages and snackbars with customizable options.

## Features
- Show toast messages with different durations and styles.
- Display snackbars using the `ScaffoldMessenger`.
- Customizable background color, text color, font size, and gravity for toast messages.
- Built-in error message styling.

## Installation
Add the following dependency to your `pubspec.yaml` file:

```yaml
resolution: workspace

dependencies:
  app_toast: latest_version
```

Then, run:

```sh
flutter pub get
```

## Usage

### Show a Toast Message
```dart
import 'package:app_toast/app_toast.dart';

AppToast.showToast(
  msg: "This is a toast message",
  longTime: true,  // Set to false for a short duration
  gravity: ToastGravity.BOTTOM,
  bgColor: Colors.black,
  txtColor: Colors.white,
  fontSize: 16.0,
  isErrorMsg: false, // Set to true for error messages
);
```

### Show a Snackbar
```dart
import 'package:app_toast/app_toast.dart';

AppToast.showSnackBar(
  context: context,
  msg: "This is a snackbar message",
  bgColor: Colors.blueGrey,
);
```

## Parameters

### `showToast` Method
| Parameter     | Type       | Default Value              | Description |
|--------------|-----------|----------------------------|-------------|
| `msg`        | `String`  | Required                   | The message to display. |
| `longTime`   | `bool`    | `true`                     | Set to `false` for a short duration. |
| `time`       | `int`     | `2`                         | Duration for iOS/Web (in seconds). |
| `gravity`    | `ToastGravity` | `ToastGravity.SNACKBAR` | The position of the toast. |
| `bgColor`    | `Color?`  | `Colors.blueGrey.shade800` | Background color of the toast. |
| `txtColor`   | `Color?`  | `Colors.white`             | Text color of the toast. |
| `fontSize`   | `double`  | `14.0`                      | Font size of the text. |
| `isErrorMsg` | `bool`    | `false`                     | If `true`, the toast will have an error style. |

### `showSnackBar` Method
| Parameter  | Type      | Description |
|-----------|----------|-------------|
| `context` | `BuildContext` | Required. The current context. |
| `msg`     | `String`  | Required. The message to display. |
| `bgColor` | `Color?`  | Optional. Background color of the snackbar. |

## Dependencies
This package depends on:
- `fluttertoast` for displaying toast messages.

Make sure to include `fluttertoast` in your project:
```yaml
resolution: workspace

dependencies:
  fluttertoast: latest_version
```

## License
This package is available under the MIT license.

## Contributions
Contributions are welcome! Feel free to open issues or submit PRs on [GitHub](https://github.com/your-repo/app_toast).

## Support
If you find this package helpful, consider giving it a ⭐ on GitHub!

