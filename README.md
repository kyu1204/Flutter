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
	2. Web
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
### [Header](Code/toonflix/lib/main.dart)
1. Column
	1. mainAxisAlignment: vertical
	2. crossAxisAlignment: horizontal
	3. children: List for Widgets
2. Row
	1. mainAxisAlignment: horizontal
	2. crossAxisAlignment: vertical
	3. children: List for Widgets
3. SizedBox: An empty box with a size.
4. Colors
	1. withOpacity: change opacity
	2. Color(0xFF181818): specific color setting for hex value
5. Text
	1. TextStyle
		1. color
		2. fontSize
		3. fontWeight
6. Padding
	1. padding
		1. EdgeInsets
			1. all
			2. only
				1. top
				2. bottom
				3. left
				4. right
			3. symmetric
				1. vertical
				2. horizontal

![header](/Assets/20230129183335.png)
### Developer Tools
![Developer Tools](/Assets/20230129183535.png)

### [Button Section](Code/toonflix/lib/main.dart)
1. Container (a.k.a div)
	1. decoration
		1. BoxDecoration
			1. color
			2. borderRadius

![Button Section](/Assets/20230129201219.png)

### VSCode Settings
1. Awesome Flutter Settings
   ```json
   "editor.codeActionsOnSave": {
       "source.fixAll": true
   },
   "dart.previewFlutterUiGuides": true,
   ```
### Code Actions
1. Click Bulb or Input Command (Command + .)
2. Choose awesome actions.
	1. Extract Method
	2. Extract Widget
	3. Wrap Padding, Center, Container, etc
### [Reusable Widgets](Code/toonflix/lib/widgets/button.dart)
1. If you want created custom widgets, define the class and inherit the core widget. 
   ```dart
   class Button extends StatelessWidget {
       final String text;
       final Color bgColor;
       final Color textColor;
       
       const Button({
           super.key,
           required this.text,
           required this.bgColor,
           required this.textColor,
       });
       
       @override
       Widget build(BuildContext context) {
           return Container(
               decoration: BoxDecoration(
                   color: bgColor,
                   borderRadius: BorderRadius.circular(45),
           ),
           child: Padding(
               padding: const EdgeInsets.symmetric(
                   vertical: 20,
                   horizontal: 50,
               ),
               child: Text(
                   text,
                   style: TextStyle(
                       fontSize: 20,
                       color: textColor,
                       ),
                   ),
               ),
           );
       }
   }
   ```
### [Cards](Code/toonflix/lib/main.dart)
1. Container
2. Row
3. Column
4. Padding
5. Text
![Cards](/Assets/20230129213637.png)

### Icons and Transforms
1. Icon
	1. Icons (many icons prepared)
	2. color
	3. size
2. Transform
	1. Transform.scale (size)
		1. scale
	2. Transform.translate (offset)
		1. offset
			1. Offset(dx, dy)
3. Container
	1. clipBehavior (How do I handle overflow widgets)
		1. Clip.hardEdge (Cut the overflow part)

![Icons and Transforms](/Assets/20230129231101.png)

### [Reusable Cards](Code/toonflix/lib/widgets/currency_card.dart)
```dart
class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? _blackColor : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted
                            ? _blackColor
                            : Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
```

![Reusable Cards](/Assets/20230129231237.png)

---
## Stateful Widgets
### [State](Code/state/lib/main.dart)
1. **Stateful Widgets** is that if a data changes, the UI changes in real time.
2. **State** is a simple **dart property**.
### [setState](Code/state/lib/main.dart)
1. If you change state, you must call setState().
2. setState() refreshes the UI.
3. It is not necessary to put the code that changes the data into setState().
4. However, it is recommanded insert the code as setState(), because it looks better.

![setState](/Assets/20230130195436.png)

### [BuildContext](Code/state/lib/main.dart)
1. It provides information about the location of a widget in the widget tree and is used to retrieve the nearest ancestor state and other resources.
```dart
@override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
```

![BuildContext](/Assets/20230130203602.png)

### [Widget Lifecycle](Code/state/lib/main.dart)
1. There are 2 things to remember about the life cycle of Stateful Widgets.
	1. initState()
		1. It is called only once when the widget is inserted into the tree for the first time. This method is an opportunity for the widget to initialize itself, such as by setting up any data or resources it needs.
		2. The `initState` method is called before the `build` method and is typically used to perform one-time setup tasks, such as allocating resources, initializing variables, or connecting to APIs. It is important to keep the `initState` method lightweight, as it can negatively impact the performance of your app if it takes too long to run.
	2. dispose()
		1. It is called when the widget is removed from the tree permanently and is used to clean up any resources that were allocated by the widget. This method is called just before the widget is destroyed.
		2. It is important to correctly clean up resources in the `dispose` method to avoid memory leaks and improve the performance of your app. For example, if you opened a network connection or an audio player in the widget, you should close it in the `dispose` method.
```dart
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = Stream.periodic(Duration(seconds: 1))
        .listen((data) => print('Data: $data'));
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Text('Stream subscription is running');
  }
}
```

![Widgets Lifecycle](/Assets/20230130210510.png)

---
## Pomodoro App
### [User Interface](Code/pomodoro/lib/screens/home_screen.dart)
1. ThemeData
	1. colorScheme: ColorScheme (backgroundColor is deprecated)
		1. backgroundColor
	2. textTheme: TextTheme
		1. displayLarge (headline1 is deprecated)
	3. cardColor
2. Flexible
	1. It takes in a flex argument that determines the proportion of space the widget should take up compared. Flexible widgets allow for more precise control over the layout of your app.

![User Interface](/Assets/20230130224230.png)

### [Timer](Code/pomodoro/lib/screens/home_screen.dart)
1. Timer
	1. dart standard function
	2. Timer.periodic
		1. Runs the specified function during the set duration.
		2. Duration(seconds: 1)
```dart
class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;
  late Timer timer;

  void onTick(Timer timer) {
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }
```

![Timer](timer.gif)

### [Pause Play](Code/pomodoro/lib/screens/home_screen.dart)
1. created **`isRunning`** property
2. created **`onPausePressed()`**
3. set QQ **`isRunning`** to **`Icon`** and **`method`** on the **`IconButton`**
```dart
class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;
  bool isRunning = false;
  late Timer timer;

  void onTick(Timer timer) {
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
    
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      ...
          Flexible(
            flex: 3,
            child: Center(
              child: IconButton(
                // set isRunning
                onPressed: isRunning ? onPausePressed : onStartPressed,
                color: Theme.of(context).cardColor,
                iconSize: 120,
                icon: Icon(
                  // set isRunning
                  isRunning
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline,
                ),
              ),
            ),
          ),
     ...
  }
    
  }
```

![Pause Play](/Assets/timer-pause.gif)

### [Date Format](Code/pomodoro/lib/screens/home_screen.dart)
1. use Duration
	1. `00:24:59.000000`
2. Split String
```dart
String format(int seconds) =>
      Duration(seconds: seconds).toString().split(".").first.substring(2, 7);
```
---
## Webtoon App
### Introduction
1. [Naver Webtoon Unofficial App](https://webtoon-crawler.nomadcoders.workers.dev/)
	1. only for educational purposes.
### [AppBar](Code/webtoon/lib/screens/home_screen.dart)
1. Scaffold
	1. backgroundColor: Colors.white
	2. appBar: AppBar
		1. elevation
			1. It is shadow for widgets
		2. backgroundColor: Colors.white
		3. foregroundColor: Colors.green
		4. title: Text
### [Data Fetching](Code/webtoon/lib/services/api_service.dart)
1. install **http** library
	1. https://pub.dev
2. write **`pubspec.yaml`**
	1. It is project setting file.
	2. supports add image, font etc
3. use **`get()`** method
	1. **`get()`** method is asynchronous.
	2. use **`async`** and **`await`** keyword.
### [fromJson](Code/webtoon/lib/services/api_service.dart)
1. use jsonDecode
	1. jsonDecode return type is dynamic
	2. This api response data type is `List`, so jsonDecode return type is `List<dynamic>`
2. create a **`WebtoonModel`**
	1. create a **Named Constructor** named **`fromJson`**
3. initialize to WebtoonModel using json data
4. return WebtoonModel List
5. If the function is asynchronous, the return type is **Future**.
	1. In this case, the return type is **`Futre<List<WebtoonModel>>`**.
### waitForWebToons
```dart
class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await APIService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);
```
### FutureBuilder
1. It is a takes a `Future` object and builds widgets based on the future's result. 
2. It has two builder functions: one for handling the future's result when it is available, and one for building a widget if the future is still in progress. 
3. The `FutureBuilder` widget automatically updates its child widget whenever the future finishes.
```dart
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = APIService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is data!");
          } else {
            return const Text("Loading...");
          }
        },
      ),
    );
  }
}
```
### [ListView](Code/webtoon/lib/screens/home_screen.dart)
1. ListView is a widget in Flutter that allows creating scrolling list of widgets. 
2. **ListView.builder**
	1. It uses an efficient builder pattern and creates items lazily, so the list can be infinitely long. 
	2. The builder function is called with index and generates a widget for each item in the list.
3. **ListView.separated**
	1. It is used to build a scrolling list of widgets with separator widgets between them. 
	2. The separators can be any widget, and the list items can be generated with a builder function that takes an index. 
	3. The builder function is called with index and generates a widget for each item in the list. 
	4. This widget is useful when you want to display a list of items with separators between them.
```dart
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = APIService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
```
### [ListView Recap](Code/webtoon/lib/widgets/webtoon_widget.dart)
1. Image.network()
2. BoxDecoration
	1. BoxShadow
```dart
child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(10, 10),
                  color: Colors.black.withOpacity(0.5),
                )
              ],
            ),
            child: Image.network(thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
```

![ListView](/Assets/20230131234152.png)

### [Detail Screen](Code/webtoon/lib/widgets/webtoon_widget.dart)
1. GestureDetector
	1. onTap
2. Navigator.push
	1. MaterialPageRoute
```dart
return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
          ),
        );
      },
```

![navigator](/Assets/navigator.gif)

### Hero
1. The `Hero` widget in Flutter is a widget that allows you to create visually spectacular animations between routes (screens/pages). 
2. It is typically used to create smooth animations between different UI elements such as images, text, and even entire pages. 
3. The `Hero` widget works by animating the shared elements between two routes as they transition from one to another. 
4. To use the `Hero` widget, you need to wrap the shared element with a `Hero` widget in both routes and give it a unique tag. 
5. The animation between the routes will then happen automatically.

![Hero](/Assets/hero.gif)

### APIService
```dart
static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getToonEpisodeById(String id) async {
    List<WebtoonEpisodeModel> episodeInstances = [];
    final url = Uri.parse("$baseUrl/$id/episodes");
    final resposne = await http.get(url);

    if (resposne.statusCode == 200) {
      final webtoons = jsonDecode(resposne.body);
      for (var webtoon in webtoons) {
        episodeInstances.add(WebtoonEpisodeModel.fromJson(webtoon));
      }
      return episodeInstances;
    }
    throw Error();
  }
```
### Futures
```dart
class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;

  @override
  void initState() {
    super.initState();
    webtoon = APIService.getToonById(widget.id);
    episodes = APIService.getLatestEpisodeById(widget.id);
  }
```
### Detail Info
1. FutureBuilder
2. Column
3. Container
	1. border
		1. Border
			1. color
			2. width
	2. boxShadow
	3. borderRadius

![Detail Info](/Assets/20230201232104.png)

### Episodes
1. Extract Widgets
	1. Episode
2. Gesture