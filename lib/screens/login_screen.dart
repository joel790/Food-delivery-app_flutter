
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/screens/register_screen.dart';
import 'package:project1/tabs/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFF8A4C7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60.0),
              height: 250,
              width: 320,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('food4.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                height: 200,
                width: 320,
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: RadialGradient(stops: const [
                    0.3,
                   1,
                    2
                  ], colors: const [
                    Color(0xFFFF0404),
                    Color(0xFDFFE600),
                    Color(0xFF3CFF0B),
                  ]),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFF3E8ED8),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFF5184E2),
                          ),
                          hintText: "Enter Email",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Color.fromARGB(255, 75, 132, 197),
                        decoration: InputDecoration(
                          focusColor: Color.fromARGB(255, 72, 128, 201),
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color.fromARGB(255, 112, 159, 230),
                          ),
                          hintText: "Enter Password",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => Get.to(RegisterScreen()),
                child: Text(
                  "Forget Password?",
                  style: TextStyle(color: Color(0xFFF81C48)),
                  selectionColor: Colors.blue[900],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.off(HomePage()),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 50, right: 50, top: 6),
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 45,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [
                      Color.fromARGB(255, 248, 122, 19),
                      Color.fromARGB(255, 238, 47, 142),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Any Account?  "),
                  GestureDetector(
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Color(0xffF5591F)),
                    ),
                    onTap: () => Get.to(RegisterScreen()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
