import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8A4C7),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        child: Container(
          height: 620,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFE5A5A5),
                  Colors.pinkAccent,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Icon(
                      Icons.image,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                'Username',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "email",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () => Get.off(LoginScreen()),
                child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Do you have Account?'),
                  ),
                  TextButton(
                      onPressed: () => Get.to(LoginScreen()),
                      child: const Text('Login',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
