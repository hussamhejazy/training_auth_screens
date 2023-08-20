import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsetsDirectional.only(top: 80),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Welcom back you\'ev been missed!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    style: TextStyle(fontSize: 18),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.grey.shade500, width: 1.5)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.grey.shade500, width: 1.5)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.grey.shade500, width: 1.5)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50)),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text('I have Account!',
                            style: TextStyle(
                              fontSize: 18,
                            ),)
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
