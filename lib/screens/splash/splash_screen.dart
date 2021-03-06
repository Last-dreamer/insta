


import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/splashscreen";


  static Route route(){
    return MaterialPageRoute(settings:const  RouteSettings(name: routeName), builder: (_) => const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async  => false,
        child: const Scaffold(body:  Center(child: CircularProgressIndicator(),),));
  }
}
