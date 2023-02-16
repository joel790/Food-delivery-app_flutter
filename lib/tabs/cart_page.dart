import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/nav_bar.dart';
import 'package:project1/pages/payment_page.dart';
import 'package:provider/provider.dart';
import '../model/product_state.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3DDDD),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF3DDDD),
          title: const Text(
            'My Cart',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: NavBar(indexNum: 2),
        body: SizedBox(child:
            Consumer<ProductState>(builder: (context, productState, child) {
          return ListView.builder(
              itemCount: productState.selectedProducts.length,
              itemBuilder: (context, index) {
                var pro = productState.selectedProducts[index];

                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10.0, left: 15, right: 15),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                pro['Image'],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pro['brand'].toString(),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                      '${pro['amount']} x \Birr ${pro['price']}'),
                                ],
                              ),
                              const Spacer(flex: 10),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 50.0),
                                      child: IconButton(
                                        onPressed: () {
                                          Provider.of<ProductState>(context,
                                                  listen: false)
                                              .removeFromCart(pro);
                                        },
                                        icon: const Icon(
                                            Icons.remove_shopping_cart,
                                            color: Color(0xFFFF2C1D)),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Row(children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.red),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {
                                                Provider.of<ProductState>(
                                                        context,
                                                        listen: false)
                                                    .decrementX(pro);
                                              },
                                              icon: const Icon(
                                                Icons.remove,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Text('${pro['amount']}'),
                                        SizedBox(width: 15),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.green,
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {
                                                Provider.of<ProductState>(
                                                        context,
                                                        listen: false)
                                                    .incrementX(pro);
                                              },
                                              icon: Icon(Icons.add,
                                                  color: Colors.white,
                                                  size: 14),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ])
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        })),
        floatingActionButton: Container(
          height: 100,
          width: double.maxFinite,
          margin:const EdgeInsets.only(left:15,bottom: 0),
          decoration: BoxDecoration(
            color:const Color(0xFFFF7C77),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28.0, top: 28),
                    child: Center(
                        child: Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                 const SizedBox(height: 10),
                  Consumer<ProductState>(
                    builder: (context, pro, child) {
                      return Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                          ' \Birr ${pro.totalPrice} ',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF06FD0E)),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(width: 150),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () => Get.to(PaymentPage()),
                    child: Text(
                      'Checkout',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
            ],
          ),
        ));
  }
}
