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
		3. [Flutter Pinball](https://pinball.flutter.dev/#/)
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
#### vscode
1. install `Dart` extension
2. install `Flutter` extension
### Running Flutter
1. `flutter create <app-name>`
2. `cd <app-name>`
3. `code .` (open to vscode)
4. We need focus on the `lib/main.dart` file.
### [Hello World](Code/toonflix/lib/main.dart)
1. The **runApp()** in the **main** function is the starting point for the application.
2. The **runApp()** receives **Widget** type parameters.
3. Everything in Flutter is a **Widget**.
4. To convert the class we created into a **Widget**, we need to **inherit the core Widget**.
   ```dart
   void main() {
       runApp(App());
   }
   
   // abstract class
   class App extends StatelessWidget{
       @override
       Widget build(BuildContext context) {
       }
   }
   ```
5. You need to return the main **Widget**, but there are two main apps provided by Flutter.
	1. MaterialApp (Google style)  **`recommend`**
	2. CupertinoApp (Apple style)
   ```dart
   class App extends StatelessWidget{
       @override
       Widget build(BuildContext context) {
           return MaterialApp();
       }
   }
   ```
6. We need focus on the `home` parameter.
7. The `home` parameter need to **`Scaffold`**
   ```dart
   class App extends StatelessWidget{
       @override
       Widget build(BuildContext context) {
           return MaterialApp(
               home: Scaffold(),
           );
       }
   }
   ```
8. Then fill in the required parameters one by one.
   ```dart
   class App extends StatelessWidget{
       @override
       Widget build(BuildContext context) {
           return MaterialApp(
               home: Scaffold(
                   appBar: AppBar(
                       title: Text("Hello Flutter"),
                   ),  // AppBar
                   body: Center(
                       child: Text("Hello World!"),
                   ),  // Center
               ),  // Scaffold
           );  // MaterialApp
       }
   }
   ```

![hello-world](/Assets/20230129165125.png)

---
## UI Challenge
