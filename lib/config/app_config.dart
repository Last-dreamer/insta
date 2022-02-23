

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/screens/splash/splash_screen.dart';

class AppConfig {

  static Route onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case '/': 
        return MaterialPageRoute(builder: (_)=> const Scaffold(),
            settings: const RouteSettings(name: "/"));
        
      case "/splashscreen": 
        return SplashScreen.route();

      default : return _errorRoute();
    }
  }

 static Route _errorRoute(){
    return MaterialPageRoute( settings: const RouteSettings(name: "/error"),
        builder: (_)=>  Scaffold(
          appBar:  AppBar(title: const Text("Error Page"),
          ),
          body: const Center(child: Text("Something went wrong ...."),),
        ));
  }
}