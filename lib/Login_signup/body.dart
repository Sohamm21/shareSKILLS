import 'package:flutter/material.dart';
import 'package:shareskills_login/Homescreen/categories.dart';
import 'package:shareskills_login/Login_signup/background.dart';
import 'package:shareskills_login/Login_signup/main.dart';

class Body extends StatelessWidget {
  final Widget child;

  Body({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 120,
            ),
            Container(
              width: 360,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter your name',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Email',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Already have an account?'),
                  SizedBox(
                    width: 90,
                    child: FlatButton(
                      textColor: Colors.blue,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MyApp();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Container(
              height: 50,
              width: 380,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Color.fromARGB(255, 112, 61, 121),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Categories();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
