import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta/config/app_config.dart';
import 'package:insta/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme:const AppBarTheme(brightness: Brightness.light, color: Colors.white, iconTheme: IconThemeData(color: Colors.black)),
        textTheme:const TextTheme(headline6: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold)),

        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      onGenerateRoute: AppConfig.onGenerateRoute,
      initialRoute: SplashScreen.routeName,

    );
  }
}
