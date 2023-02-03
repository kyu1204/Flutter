# Flutter TicTok Clone Coding
## Introduction
### Welcome
1. Introduce lecture
### Requirements
1. [Dart 시작하기](https://nomadcoders.co/dart-for-beginners/lobby) 
2. [Flutter 로 웹툰 앱 만들기](https://nomadcoders.co/flutter-for-beginners/lobby)
### Course Plan
1. First create the UI
2. Statemetns
3. Firebase
---
## Project Setup
### Initialization
1. Create a flutter project
	1. `flutter create tictok_clone`
2. Rename `MyApp()`
### Constants
1. Create constants
	1.  sizes
		1. const size data
	2. gaps
		1. const block data
### Project Files
1. [TicTok Screen Shot](https://nomadcoders.co/downloads/tiktok.zip)
---
## Authentication
### Sign Up Screen
1. SafeAray
	1. SafeArea is a Flutter widget that helps ensure that important UI elements are not obscured by the notch, status bar, navigation bar, or any other system UI element on iOS devices. 
	2. It adds padding to its child widget so that it is not obscured by these elements and remains visible on the screen. 
	3. This is particularly useful in situations where the device's screen has a curved or irregular shape, or when the screen's size changes dynamically, such as when the device is rotated or when the keyboard is shown.
2. bottomNavigationBar
	1. BottomAppBar
		1. The BottomAppBar is a Material Design widget in Flutter that is typically placed at the bottom of the screen and contains various UI elements such as navigation icons, action buttons, and a floating action button. 
		2. It is a replacement for the traditional bottom navigation bar and can be used with Scaffold.bottomNavigationBar.
### Login Screen
1. Navigator.of(context).pop()
	1. It is a method in Flutter's navigation framework that is used to close the current screen and return to the previous screen.
### AuthButton
1. Font Awesome
	1. https://pub.dev/packages/font_awesome_flutter/install
	2. 