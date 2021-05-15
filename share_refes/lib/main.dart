import 'package:flutter/material.dart';
import 'package:share_refes/Loginpage.dart';
import 'package:share_refes/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  var _selectedGender = Gender.FEMALE;
  var _selectedLanguages = Set<ProgrammingLanguage>();
  var _isEmployed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Settings'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username'
                ),

              ),
            ),
            ListTile(
              title: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password'
                ),

              ),
            ),
            RadioListTile(
              title: Text('Female'),
              value: Gender.FEMALE,
              groupValue: _selectedGender,
              onChanged: (newValue) =>
                  setState(() => _selectedGender = newValue),
            ),
            RadioListTile(
              title: Text('Male'),
              value: Gender.MALE,
              groupValue: _selectedGender,
              onChanged: (newValue) =>
                  setState(() => _selectedGender = newValue),
            ),
            RadioListTile(
              title: Text('Other'),
              value: Gender.OTHER,
              groupValue: _selectedGender,
              onChanged: (newValue) =>
                  setState(() => _selectedGender = newValue),
            ),
            
            CheckboxListTile(
              title: Text('Dart'),
              value: _selectedLanguages.contains(ProgrammingLanguage.DART),
              onChanged: (_) {
                setState(() {
                  _selectedLanguages.contains(ProgrammingLanguage.DART)
                      ? _selectedLanguages.remove(ProgrammingLanguage.DART)
                      : _selectedLanguages.add(ProgrammingLanguage.DART);
                });
              }
            ),
            CheckboxListTile(
                title: Text('Javascript'),
                value: _selectedLanguages.contains(ProgrammingLanguage.JAVASCRIPT),
                onChanged: (_) {
                  setState(() {
                    _selectedLanguages.contains(ProgrammingLanguage.JAVASCRIPT)
                        ? _selectedLanguages.remove(ProgrammingLanguage.JAVASCRIPT)
                        : _selectedLanguages.add(ProgrammingLanguage.JAVASCRIPT);
                  });
                }
            ),
            CheckboxListTile(
                title: Text('Kotlin'),
                value: _selectedLanguages.contains(ProgrammingLanguage.KOTLIN),
                onChanged: (_) {
                  setState(() {
                    _selectedLanguages.contains(ProgrammingLanguage.KOTLIN)
                        ? _selectedLanguages.remove(ProgrammingLanguage.KOTLIN)
                        : _selectedLanguages.add(ProgrammingLanguage.KOTLIN);
                  });
                }
            ),
            CheckboxListTile(
                title: Text('Swift'),
                value: _selectedLanguages.contains(ProgrammingLanguage.SWIFT),
                onChanged: (_) {
                  setState(() {
                    _selectedLanguages.contains(ProgrammingLanguage.SWIFT)
                        ? _selectedLanguages.remove(ProgrammingLanguage.SWIFT)
                        : _selectedLanguages.add(ProgrammingLanguage.SWIFT);
                  });
                }
            ),

            SwitchListTile(
              title: Text('Is Employed'),
              value: _isEmployed,
              onChanged: (newValue) => setState(() => _isEmployed = newValue)
            )
          ],
        ),
      )
    );
  }
}



// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     // setState(() {
//     //   _counter++;
//     // });
//
//     Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//             builder: (BuildContext context) => LoginPage()
//         ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
