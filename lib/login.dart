import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:knowledegflex/createuser.dart';
import 'package:knowledegflex/welcome_screen.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(120),
              child: Center(
                child: Container(
                  child: const Text(
                    'KnowledgeFlex',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  icon: const Icon(Icons.email),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 30, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  icon: const Icon(Icons.shopping_bag),
                  labelText: 'Password',
                ),
              ),
            ),
            FlatButton(
              padding: const EdgeInsets.only(left: 230),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const ForgetPassword()));
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 15,
                ),
              ),
            ),
            FlatButton(
              padding: const EdgeInsets.only(left: 230, bottom: 30),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CreateUser()));
              },
              child: const Text(
                'Create New Account',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => WelcomeScreen()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
