# learn_flutter

Creation: 
 - ```flutter create <app-name>```

 Extension required for VSCode:
 - Flutter, Dart

 Dart Basics:

 Flutter Dive in:

 - All are widgets!
 - coz widgets are objects, create classes !

 main.dart:
  - import material.dart which has themes, widget etc.,

All are Widget in Flutter.

Scaffold is a Widget
 - helper widget baked into material Dart, creating a base structure for an app.
 - which has names arguments - hit ctrl + space to list the dropdown items of named arguments.
 - appBar - which is the appBar of the component.
 - body - which is the content of the app.

 Column 
 - creates a vertical array of children.

 mainAxisAlignment - vertical axis.
 crossAxisAlignment - horizontal axis.

 Row
 - creates a horizontal array of children.

 mainAxisAlignment - horizontal axis.
 crossAxisAlignment - Vertical axis.

 Understating State:

 - User Input -> Widget -> Render UI. (Stateless Class)
 - User Input -> Widget[State] -> Render UI. (Stateful Class)

- How to maintain State ?
 - Change the MyApp to extend with 'StatefulWidget' Class; There is a createState() method which in-turn calls the other class extending 'State' class.
 - Wrap the existing class extending State<MyApp> class and rename it to 'MyAppState'
 - There is also a method setState() method for maintaining state.

