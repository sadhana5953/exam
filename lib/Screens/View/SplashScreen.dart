import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(),
          Image(image: AssetImage('assets/images/news.jpg'),height: 350,width: 350,),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/home');
            },
            child: Container(
              height: 50,
              width: 350,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.center,
              child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          )
        ],
      ),),
    );
  }
}
