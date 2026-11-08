# Space App

A Flutter app for exploring the solar system in 3D — the Sun and all eight planets, each rendered from its own `.glb` model.

> Package: `space_app` · Version 1.0.0+1 · Dart SDK ^3.11.5

* * *

## Features

- The Sun and all eight planets (Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune) as bundled 3D models, with a 2D image for each body.
- 3D rendering through two packages: `flutter_3d_controller` for in-app model control and `model_viewer_plus` for `.glb` viewing.
- Everything ships inside the app (`assets/`) — models and images load from local files, not from a server.
- Cross-platform Flutter project with Android and iOS targets.

* * *

## Tech Stack

| Category        | Technology                                      |
|-----------------|-------------------------------------------------|
| Framework       | Flutter (Material Design)                       |
| Language        | Dart ^3.11.5                                    |
| 3D rendering    | `flutter_3d_controller` ^2.3.0, `model_viewer_plus` ^1.10.0 |
| Icons           | `cupertino_icons` ^1.0.8                        |
| Linting         | `flutter_lints` ^6.0.0                          |
| Assets          | PNG images + GLB 3D models, declared in `pubspec.yaml` |

* * *

## Project Structure

```
space-app/
├── android/            # Android platform project
├── ios/                # iOS platform project
├── assets/             # planet images (.png) and 3D models (.glb)
├── lib/                # Dart source
├── test/               # Flutter tests
├── analysis_options.yaml
└── pubspec.yaml        # dependencies and asset declarations
```

* * *

## Getting Started

### Prerequisites

- Flutter SDK with Dart 3.11.5 or newer (check with `flutter --version`)
- Android Studio or VS Code with the Flutter plugin
- An Android emulator/device, or an iOS simulator/device (macOS only)

### Build & Run

```
git clone https://github.com/youssef-shokry/space-app.git
cd space-app
flutter pub get
flutter run
```

Run `flutter doctor` first if the build fails — it reports missing SDKs and licenses.

No API keys or environment files are required.

* * *

## Credits

Made by Youssef Ahmed Ali.
