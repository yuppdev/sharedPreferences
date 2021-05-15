import 'package:flutter/material.dart';
import 'package:share_refes/Homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase/firebase.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Login page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'email',
                    fillColor: Colors.white54,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.brown, width: 1.0)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'password',
                    fillColor: Colors.white54,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.brown, width: 1.0)
                    )
                  ),
                ),
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
                    // final SharedPreferences  sharedPreferences = await SharedPreferences.getInstance();
                    // sharedPreferences.setString('email', emailController.text);
                    // // Get.to(Homepage(l));
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) => HomePage()
                    //     ));
                    try{
                      // FirebaseUser user = FirebaseAuth.getInstance();
                    }catch(e){}

                  },
                  child: Text(
                      'Login',
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
