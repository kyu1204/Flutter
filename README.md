# Flutter Study
## Introduction
### Why Flutter?
1. Fluter is multi cross platform library
	1. One Code and Framework supports Web, Mobile App, Window, MacOS, Linux, and embedded.
2. There is an awesome Web and Mobile App, created using Flutter.
	1. Mobile Application
		1. [Google Pay](https://flutter.dev/showcase/google-pay)
		2. [BMW](https://flutter.dev/showcase/bmw)
		3. [Wondrous](https://apps.apple.com/us/app/wonderous/id1612491897)
		4. [etc](https://flutter.dev/showcase)
	2. 웹
		1. [Google I/O Photo Booth](https://photobooth.flutter.dev/#/)
		2. [Flutter Plasma](https://flutterplasma.dev/)
		3. [Flutter Pin Ball](https://pinball.flutter.dev/#/)
		4. [etc](https://flutter.dev/showcase)
### How Flutter Works
1. The Flutter Code runs on engines created in **`C/C++`**.
2. The Flutter Engine does not request rendering from the host OS.
3. All UI and animations run on the engine.
4. However, host OS widgets and animations are not available because all widgets and animations run on the engine.
5. So any iOS or Android type widgets provided by Flutter is fake.
### Flutter vs React Native
1. If you want a customized UI and design for everything, use Flutter.
2. If you want to follow the UI and widget of the host OS, use React Native.
---
## Hello Flutter
### Installation (Apple Silicon MacOs)
#### Install Flutter SDK
1. `arch -arm64 brew install --cask flutter`
	1. If not working, `brew uninstall dart-sdk` and reinstall
#### Install iOS Simulator
1. follow guide
   > https://docs.flutter.dev/get-started/install/macos#deploy-to-ios-devices
#### Install Android Simulator
1. `arch -arm64 brew install --cask android-studio`
2. follow guide
   > https://docs.flutter.dev/get-started/install/macos#android-setup
3. If an `Unable to find bundled Java version.` error, follow this guide
   > https://github.com/flutter/flutter/issues/118502#issuecomment-1383215722
#### Portable
1. join https://dartpad.dev 
2. choice the samples.