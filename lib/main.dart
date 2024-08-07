import 'package:exam/Screens/Provider/NewsProvider.dart';
import 'package:exam/Screens/View/DetailPage.dart';
import 'package:exam/Screens/View/HomePage.dart';
import 'package:exam/Screens/View/SavedScreen.dart';
import 'package:exam/Screens/View/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  return runApp(NewsApp(),);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Newsprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Splashscreen(),
          '/home':(context)=>Homepage(),
          '/detail':(context)=>Detailpage(),
          '/save':(context)=>Savedscreen(),
        },
      ),
    );
  }
}
