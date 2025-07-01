//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:obulamu/on_boarding_screen.dart';
//import 'package:my_app/firebase_options.dart';
//import 'package:my_app/on_boarding_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform
 // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
