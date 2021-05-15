import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OpeningView extends StatefulWidget {
  @override
  _OpeningViewState createState() => _OpeningViewState();
}

class _OpeningViewState extends State<OpeningView> {
  _OpeningViewState();

  String displayName = "";

  @override
  void initState() {
    getData();
  }

  getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
       displayName = prefs.getString('displayName');
    });
  }
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final logo = Image.asset(
      'assets/background.png',
      height: mq.size.height/4,
    );

    final loginButton =  Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width/1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
          )
        ),
      ),
    );


    return Container();
  }
}
