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
2. Flutter의 엔진은 호스트OS에게 렌더링을 요청하지 않는다. The Flutter Engine is does not request rendering from the host
3. 모든 UI와 애니메이션은 엔진이 수행한다.
4. 모든 위젯과 애니메이션은 엔진위에서 돌아가기 때문에, 호스트 OS의 위젯을 이용할 수 없다.
5. Flutter가 제공하는 iOS 또는 안드로이드 위젯과 같은 형태는 모두 Fake 다.
### Flutter vs React Native
1. 만약 모든것이 커스터마이징된 UI 및 디자인을 원할 경우 Flutter를 사용해라.
2. 호스트 OS의 위젯을 따르고 싶다면 React Native를 사용해라.
