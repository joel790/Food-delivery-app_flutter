import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';


class SplashScreen extends StatefulWidget {
  

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Get.to( LoginScreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white12,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
            children:  const [
              Text('Well Come!',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.blue),),
                CircleAvatar(
                radius:100,
                child: ClipOval(
                  child: Image(
                   height:200,
                   width:200,
                    fit: BoxFit.fill,
                    image: AssetImage('food4.jpg')),
                ),
              
              ),
                SizedBox(height:50),
                Text('GESH DELIVERY',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.orange)),
            SizedBox(height:100),
            Text('This is the Food Delivery App For GESH Hotel only',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.green)),
            ],
          ),
        ),
      
    );
  }
}