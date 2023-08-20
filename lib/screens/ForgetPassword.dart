import 'package:flutter/material.dart';
import 'package:login_register/screens/LoginScreen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              //الانتقال الى شاشة جديدة بدون الرجوع الى الشاشة الحالية
              //Navigator.pushReplacementNamed(context, '/' );

              //الانتقال الى شاشة جديدة بدون الرجوع الى اي من الشاشات السابقة
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),

          ),
        ),
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
                    'Return Your Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: 20,
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
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Send Code',
                      style: TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
