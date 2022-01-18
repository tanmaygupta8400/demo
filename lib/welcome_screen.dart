import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.only(left: 30.0, right: 50.0, top: 50, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Hello Dear, Welcome to, Knowledgeflex',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 10.0, right: 50.0, top: 10, bottom: 50),
                child: Column(
                  children: [
                    Text(
                      'Please turn on your GPS to find out better events suggestion near you.',
                      style: TextStyle(
                          fontSize: 25, color: Colors.deepPurpleAccent),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10, bottom: 10),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (_) => Events()));
                  },
                  child: const Text(
                    'Turn On GPS',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
