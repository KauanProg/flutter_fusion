# Flutter Fusion

The **Flutter Fusion** is a comprehensive package that provides a variety of stylized widgets to facilitate Flutter development. If you're looking to add modern and visually appealing widgets to your Flutter project, this package might be beneficial for you.

## Features

- **NeumorphicWidgets**: A variety of widgets with neumorphic design, including buttons, icons, boxes, and radio buttons.
- **Stylish Components**: Well-designed components to help make your application more visually attractive.
- **Easy Integration**: Straightforward integration into existing Flutter projects.

## Getting Started

To start using **Flutter Fusion**:

1. Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_fusion: ^current_version
```

2. Run flutter pub get to install the dependencies.

3. Import the package in your Dart file:

```dart
import 'package:flutter_fusion/flutter_fusion.dart';
```

## Usage

Here's a basic example of how you can utilize one of the widgets from the package:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_fusion/flutter_fusion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Fusion Demo')),
        body: Center(
          child: NeumorphicButton(
            onPressed: () {
              // Action when the button is pressed
            },
            width: 200,
            height: 56,
            title: 'Click Here',
          ),
        ),
      ),
    );
  }
}

```
