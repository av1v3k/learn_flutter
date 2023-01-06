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

modified answerFunction / answerQuestion to accept argument 'score', and also changed the answer List/Array containing with Map/Object to have 'text' & 'score'

NOTE: A value of type 'Null' can't be assigned to a parameter of type 'int' in a const constructor.
Try using a subtype, or removing the keyword 'const'.

The above error occurred while calling <Result> Widget with const prepended.

NOTE: To wrap a widget with another widget, Flutter + VSCode has a shortcut,

MACOS: Command + .

NOTE: The FlatButton, RaisedButton and OutlineButton widgets have been replaced by TextButton, ElevatedButton, and OutlinedButton respectively. Ref: https://docs.flutter.dev/release/breaking-changes/buttons

Syntax for Styling Button's:
============================
Example:
-------
1. ElevatedButton(
  child: Text(''),
  onPressed: (){},
  style: ElevatedButton.styleFrom( // .styleFrom() is common for all buttons
    primary: Colors.orange, // Background color
    onPrimary: Colors.white // Foreground color
  )
)

2. TextButton(
  child: Text(''),
  onPressed: (){},
  style: ElevatedButton.styleFrom( // .styleFrom() is common for all buttons.
    primary: Colors.orange, // This is for text color, there is no background color for TextButton.
    onPrimary: Colors.white
  )
)

4hrs of Basic Flutter Basics comes to end !

1st Assignemnt done in home_work_1_flutter_basics branch. But, not visible locally.

iOS Simulator:
==============
 - Use xCode to test your app.
 - open -a Simulator.app (For Development + Testing no need of paid account. Only for Publish we need paid account.)

25 Dec, 2022:

Yippee! Another App - Personal Expense App.

- Widgets, Theming & Material Design, Working with Images & Fonts
- Business Logic to App.

Widgets:
 - ListView
 - GridView
 - ListTile
 - Text
 - Image
 - Icon
 - RaisedButton
 - GestureDetector
 - InkWell

```flutter create expense_app```

- diff b/w SizedBox & Container? - 
- Column & Row - which was covered before.
- along with this MainAxis & CrossAxis was also discussed.

Creating a Model:

Transaction Model
- what is 'late' keyword ? - Can also use run time constant keyword 'final' to all it's properties as discussed before.
- And also add required decorator before each property.

```error```
Can't define the 'const' constructor because the field 'transactions' is initialized with a non-constant value.

- removed const from all the classes especially the <Widget>

```error```
The constructor being called isn't a const constructor.
Try removing 'const' from the constructor invocation.

- removed const from all the classes.

Yipee! dart diagnostic tool was much helpful.

Added Custom List using multiple widget combination.

- added container's margin, padding, decoration for styling the amount Container widget
- added fontweight, fontsize using style property & TextStyle() widget.(Voila!)

diff b/w Container vs Column/Row

- Container
  - Takes 1 child
  - Rich alignment & styling options.
  - Flexible width.

- Column/Row
  - Takes multiple children as argument.
  - Alignment & no styling.
  - Always takes complete width(row) / height(column)

- String Interpolation - ${<value>}

- How to format dates ?
 using intl pub package specifying in pubspec.yaml file with version. VSCode automatically installs.

- How to get user inputs ?
 using TextField()

- Instead of using onChange event of TextField(), use TextFieldController.text to get the value of the Input field when pressing Click of the button.

```Err0r```
why this wsa throwning error ?
amountController.text as double - didn;t work
double.tryParse - didn;t work
Invalid const value - remove unncessary const declaration[Resolved]

Splitted Widget to small Widgets for flexibility & to manage state
- transation_container.dart
  - transaction_list.dart
  - transaction_input.dart

- added setState inside a function addtransaction() in COntainer file to add new transaction state.
- trigger by passing fn ref to transaction input file.

How to bring scrollable View?
- Wrap the 'body' section of the Scaffold to SingleChildScrollView()
- For TransactionList Widget alone wrap with ListView with a Container, instead of SingleChildScrollView()

ListView vs ListView.builder()
- ListView.builder() is similar to Virtual loader same as react? (Loading what's visible)
- Instead of wrapping Column with SingleChildScrollView() widget, we can use ListView() widget which has by default SingleChildScrollView()

