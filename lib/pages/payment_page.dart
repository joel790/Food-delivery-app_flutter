import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../model/product_state.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool value = false;

  void isChecked() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3DDDD),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFFF3DDDD),
        title: const Text('Check out!',
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF07375F),
                fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text('Total price',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          Consumer<ProductState>(
            builder: (context, pro, child) {
              return Center(
                child: Text(
                  ' \Birr ${pro.totalPrice} ',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Delivery',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Adress of delivery",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Phone number",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Payment',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
           const SizedBox(
            height: 15,
          ),
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Bank Holder Name",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.red,
                ),
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Bank Account",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.attach_money,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text('Pay',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.teal),)),
            ),
          )
        
        
        ],
      ),
    );
  }
}
