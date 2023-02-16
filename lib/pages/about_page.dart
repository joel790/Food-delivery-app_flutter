import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3DDDD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3DDDD),
        title: const Text('About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          color:Colors.white,
          ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal:10,vertical:35),
          child: AnimatedTextKit(
				animatedTexts: [
           WavyAnimatedText('WELCOME !',
					textStyle: const TextStyle(
						color: Colors.blue,
						fontSize: 35,
						),
            ),
				TyperAnimatedText('This is GESH Delivery app prepared only for GESH HOTEL, And Developed by EYUEL AND HABTAMU  ',
					textStyle: const TextStyle(
						color: Colors.green,
						fontSize: 21,
						),
            ),

				TyperAnimatedText('You Are Well come to use this App, We are happy to deliver for you Go And Order thanks! ',
					textStyle: const TextStyle(
						fontSize: 23, fontWeight: FontWeight.bold,
            color: Colors.red,
            ),
              ),
        TyperAnimatedText('GESH is An international hotel that have too much international foods and we have clean and comfortable receiption rooms for our guests ',
					textStyle: const TextStyle(
						fontSize: 20, fontWeight: FontWeight.bold),
              ),
              

				],
			
			),
        ),

        ),
      ),
    );
  }
}