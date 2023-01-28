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
5. Flutter가 제공하는 iOS 또는 안드로이드 위젯과 같은 형태는 모두 Fake 다. all so flutter supports looks like iOS and android widget is fake.
### Flutter vs React Native
1. 만약 모든것이 커스터마이징된 UI 및 디자인을 원할 경우 Flutter를 사용해라.
2. 호스트 OS의 위젯을 따르고 싶다면 React Native를 사용해라.
