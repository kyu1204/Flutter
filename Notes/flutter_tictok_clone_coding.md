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
### [Constants](Codes/tictok_clone/lib/constants/)
1. Create constants
	1.  sizes
		1. const size data
	2. gaps
		1. const block data
### Project Files
1. [TicTok Screen Shot](https://nomadcoders.co/downloads/tiktok.zip)
---
## Authentication
### [Sign Up Screen](Codes/tictok_clone/lib/features/authentication/sign_up_screen.dart)
1. SafeAray
	1. SafeArea is a Flutter widget that helps ensure that important UI elements are not obscured by the notch, status bar, navigation bar, or any other system UI element on iOS devices. 
	2. It adds padding to its child widget so that it is not obscured by these elements and remains visible on the screen. 
	3. This is particularly useful in situations where the device's screen has a curved or irregular shape, or when the screen's size changes dynamically, such as when the device is rotated or when the keyboard is shown.
2. bottomNavigationBar
	1. BottomAppBar
		1. The BottomAppBar is a Material Design widget in Flutter that is typically placed at the bottom of the screen and contains various UI elements such as navigation icons, action buttons, and a floating action button. 
		2. It is a replacement for the traditional bottom navigation bar and can be used with Scaffold.bottomNavigationBar.
### [Login Screen](Codes/tictok_clone/lib/features/authentication/login_screen.dart)
1. Navigator.of(context).pop()
	1. It is a method in Flutter's navigation framework that is used to close the current screen and return to the previous screen.
### [AuthButton](Codes/tictok_clone/lib/features/authentication/widgets/auth_button.dart)
1. Font Awesome
	1. https://pub.dev/packages/font_awesome_flutter/install
	2. FaIcon
		1. FontAwesomeIcons
2. FractionallySizedBox
	1. It is sizes its child to a fraction of the total available space. 
	2. It allows you to specify the height or width of the child as a fraction of the height or width of the parent.
3. Stack
	1. It is allows you to overlay multiple children widgets on top of each other.
4. Align
	1. It is aligns its child within itself and optionally scales the child to fit.

![auth](/Assets/auth.gif)

### [Sign Up Form](Codes/tictok_clone/lib/features/authentication/username_screen.dart)
1. To set the default `Scaffold` theme, add to  **`ThemeData`**
	1. scaffoldBackgroundColor
	2. appBarTheme
		1. AppBarTheme
			1. backgroundColor
			2. foregroundColor
			3. elevation
			4. titleTextStyle
				1. TextStyle

![sign up](/Assets/20230204175023.png)

### [Username Screen](Codes/tictok_clone/lib/features/authentication/username_screen.dart)
1. Textfield
	1. TextField is a widget in Flutter that provides a text input field for accepting user input. 
	2. cursorColor
	3. decoration
		1. InputDecoration
			1. hintText
			2. enabledBorder, focusedBorder
				1. UnderlineInputBorder
					1. borderSide
						1. BorderSide
							1. color
	4. controller
		1. TextEditingController
			1. It is used to control the text input in a TextField widget. 
			2. It acts as a bridge between the TextField and your code, providing a way for you to read and modify the text being entered by the user. 

![username screen](/Assets/username_screen.gif)

### FormButton
1. AnimatedContainer
	1. It is allows you to animate the properties of a container. 
	2. By specifying a duration and a curve, you can create smooth transitions between different states of the container. 
2. AnimatedDefaultTextStyle
	1. It is allows you to animate the default text style of a widget tree. 
	2. The text style is defined by a `TextStyle` object and can include properties such as font size, font weight, font family, color, and more. 
	3. When the text style changes, AnimatedDefaultTextStyle smoothly transitions from the old text style to the new text style over a given duration and curve.

![form button](/Assets/form_button.gif)

### Email Screen
1. RegExp
	2. hasMatch
2. TextField
	1. keyboardType
		1. TextInputType.emailAddress
	2. autocorrect
	3. onEditingComplete
		1. `done` button handler
	4. decoration
		1. errorText

![email screen](/Assets/email_screen.gif)

### Password Screen
