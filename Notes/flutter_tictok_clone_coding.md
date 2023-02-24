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
1. Controller.clear()
2. TextField
	1. decoration
		1. InputDecoration
			1. suffix
3. Row
	1. mainAxisSize
		1. MainAxisSize.min

![password screen](/Assets/password_screen.gif)

### Birthday Screen
1. DateTIme
	1. yyyy-mm-dd HH:MM:SS
2. Controller.value = TextEditingValue()
3. bottomNavigationBar
	1. BotoomAppBar
		1. CupertinoDatePicker
			1. initialDateTime
			2. maximumDate
			3. mode
				1. CupertinoDatePickerMode.date
			4. onDateTimeChanged

![birthday screen](/Assets/20230210153926.png)

### Login Form
1. Form
	1. It is a convenient way to build and organize a group of form fields. 
	2. It provides a centralized and common structure for validating and submitting form data.
	3. With the `Form` widget, you can define a group of form fields that are placed inside a `Form` container. 
	4. You can also specify a common `validator` function that is called for each form field to validate its value.
2. TextFormField
	1. It is a material design text field used to receive input from the user. 
	2. It is commonly used within a `Form` widget to build a form and provide an easy way to validate the user input.
	3. validator
	4. onSaved
3. GlobalKey
	1. It is a unique identifier that is used to identify a widget across multiple frames in a Flutter application. 
	2. A `GlobalKey` can be used to access a widget and its properties, such as its state, from other parts of the application.
	3. The `GlobalKey` is commonly used with `Form` and `FormField` widgets to access the form data and validate it. 

![login form](/Assets/20230210203353.png)

## Onboarding
### Interests Screen
1. SingleChildScrollView
2. Wrap
	1. runSpacing
	2. spacing

![interests screen](/Assets/20230210215848.png)

### Scroll Animations
1. Scrollbar
2. ScrollController
	1. offset
3. AnimatedOpacity
	1. opacity
	2. duration
3. AnimatedContainer
	1. duration

![scroll animation](/Assets/scroll_animation.gif)

### Tutorial Screen
1. DefaultTabController
	1. length
2. TabBarView
3. TabPageSelector
	1. color
	2. selectedColor

![tutorial Screen](/Assets/tutorial_screen.gif)

### AnimatedCrossFade
1. AnimatedCrossFade
	1. It is fades between two children widgets with a smooth animation. 
	2. It takes two child widgets and switches between them based on the provided `crossFadeState` property. 
	3. When `crossFadeState` is set to `CrossFadeState.showFirst`, the first child widget is displayed, and when it is set to `CrossFadeState.showSecond`, the second child widget is displayed. 
	4. The transition between the two widgets is animated over a specified duration using a fade effect.
2. GestureDetector
	1. onPanUpdate
	2. onPanEnd
3. BottomAppBar
	1. AnimatiedOpacity
	2. CupertinoButton

![animated cross fade](/Assets/onboarding.gif)

## Tab Navigation
### pushAndRemoveUntil
1. `pushAndRemoveUntil` is a method in the Flutter framework's `Navigator` class that allows you to navigate to a new screen while removing all the previous screens from the navigation stack.
### BottomNavigationBar
1. `BottomNavigationBar` is a pre-built widget in the Flutter framework that provides a navigation bar at the bottom of the screen. 
2. It is typically used to switch between different sections or pages of an app.
3. The `BottomNavigationBar` widget can be customized with icons and labels for each navigation item, and it supports a maximum of five navigation items at once. When a user taps on a navigation item, the corresponding screen is displayed.