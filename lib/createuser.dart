import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:knowledegflex/login.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40),
                child: Center(
                    child: Container(
                  child: CircleAvatar(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    child: ClipOval(
                      child: Icon(Icons.person, color: Colors.blue, size: 50),
                    ),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 50.0, top: 0, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    icon: const Icon(Icons.person),
                    labelText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 50.0, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    icon: const Icon(Icons.mail),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 50.0, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    icon: const Icon(Icons.shopping_bag),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 50.0, top: 10, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    icon: const Icon(Icons.shopping_bag),
                    labelText: 'Confirm Password',
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
                        MaterialPageRoute(builder: (_) => LoginDemo()));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 80, right: 10, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Already have an account ?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginDemo()));
                            },
                            child: Text(
                              'Log in',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
