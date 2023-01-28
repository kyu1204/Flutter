# Flutter Study
## Introduction
### Why Flutter?
1. Fluter is multi cross platform library
	1. 하나의 언어와 프레임 워크로 web, app, Linux, Window, OSX, 임베디드 까지 지원한다.
2. Flutter을 사용해서 만든 awesome 한 앱, 웹들이 있다.
	1. 앱
		1. 구글 페이
		2. wondrous
		3. bmw
		4. etc
	2. 웹
		1. 구글 포토부스
		2. 핀볼
		3. etc
### How Flutter Works
1. Flutter Code는 C/C++ 로 만든 엔진 위에서 돌아간다
2. Flutter의 엔진은 호스트OS에게 렌더링을 요청하지 않는다.
3. 모든 UI와 애니메이션은 엔진이 수행한다.
4. 모든 위젯과 애니메이션은 엔진위에서 돌아가기 때문에, 호스트 OS의 위젯을 이용할 수 없다.
5. Flutter가 제공하는 iOS 또는 안드로이드 위젯과 같은 형태는 모두 Fake 다.
### Flutter vs React Native
1. 만약 모든것이 커스터마이징된 UI 및 디자인을 원할 경우 Flutter를 사용해라.
2. 호스트 OS의 위젯을 따르고 싶다면 React Native를 사용해라.
