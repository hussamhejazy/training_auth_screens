import 'package:flutter/material.dart';

import 'ForgetPassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (){
                            //الانتقال لصفحة جديدة مع امكانية الرجوع للصفحة الحالية
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword()));
                            Navigator.pushNamed(context, '/forget_password');
                          },
                          child: Text('Forget Password ?',
                            style: TextStyle(
                              fontSize: 18,
                            ),)
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
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
                            Navigator.pushNamed(context, '/create_account');
                          },
                          child: Text('Create New Account?',
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
