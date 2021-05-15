import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_refes/Loginpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home page'),
        ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'abcg'
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: Colors.green)
                  ),
                  onPressed: () async {
                    final SharedPreferences  sharedPreferences = await SharedPreferences.getInstance();
                    sharedPreferences.remove('email');
                    // Get.to(Homepage());
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()
                        ));
                  },
                  child: Text(
                    'Sign out',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  color: Colors.blue,

                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
