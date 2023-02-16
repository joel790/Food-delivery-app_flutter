import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/tabs/home_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        leading:IconButton(
          onPressed:()=>Get.off(HomePage()),
          icon:Icon(Icons.arrow_back),
        )
      ),
      backgroundColor: const Color(0xFFF3DDDD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5),
              child: Text('Today'),
            ),
            Container(
              child: ListTile(title: Text('You have purchased 5 items '),
              trailing: Text('2 hrs ago'),
              ),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            SizedBox(height: 5,),
      
            Container(
              child: ListTile(title: Text('there is a great discount on  pizza for 3 days  '),
              trailing: Text('12 min ago'),
              ),
               height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            SizedBox(height: 5,),
      
          
            Container(
              child: ListTile(title: Text('You have added 5 items to your cart'),
              trailing: Text('1 hr  ago'),
              ),
               height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            SizedBox(height: 5,),
      
      
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5),
              child: Text('Yesterday'),
            ),
            Container(
              child: ListTile(title: Text('well com e to our delivery system we are going to provide you the best service '),
              trailing: Text('1 days ago'),
              ),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            SizedBox(height: 5,),
      
            
            Container(
              child: ListTile(title: Text('thanks for your fead back on our delivery system  '),
              trailing: Text('1 days ago'),
              ),
               height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            SizedBox(height: 5,),
      
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5),
              child: Text('Lastly'),
            ),
            Container(
              child: ListTile(title: Text('You have added 5 items '),
              trailing: Text('2days ago'),
              ),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            SizedBox(height: 5,),
          
            Container(
              child: ListTile(title: Text('You have added 5 items to your cart '),
              trailing: Text('2 days ago'),
              ),
               height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
      
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}