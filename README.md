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


Using Private Properties:
- State extend class, variables prepended with '_' denoting it is private.


What is diff b/w positional parameter & named parameter ?

 - https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart


Making a separate StatelessWidget using 'Question' class and into a separate file.

- Used Container/SizedBox to wrap the Text widget to center the question text, which has child as argument.

FAQs:


- What is the diff b/w Container & SizedBox?
- What is const vs final vs static keywords ?

Created Answer Class and passed the callback for setting state.
- Passed Button text and callback for instanting Answer class.


Modified question Array to Map(Array of Object as in JS)

- changed question of type 'var' to 'List' or when referred in code, use .toString() to convert into string;

Now, for each question Object, How to render the answer List ?

- The custom Layout(by me) is changing as followed by Udemy Tut. :(
- Used List<String>, toList(), spread operator to expand the list.

What is diff b/w const vs final?

final - runtime fixed/constant variable.
const - compile time fixed/constant variable.

const can also be used to value as well - And that means, values can't be changed

- if ... loop
 sample if loop

 Dart supports === long time back? now it no more supports. Why?
  For equality Dart supports only '=='

- null value && null safety

Only when declared with 'var' keyword, the variable is null, all other decalaration it is expecting a value to be assigned.

- To allow null in a variable,

String? person = "Messi"; 
person = null; // This will work.

Why not var? person = "Messi" // This will not work and null check is available 2.11.0.

For better experience ?
 - Center() widget & ternirary operator - to avoid stack overflow error of array.