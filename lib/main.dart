import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelmate/splashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await SharedPreferences.getInstance();
  final onboarding = storage.getBool("isOnboarding") ?? false;
  runApp(MyApp(onboarding: onboarding,));
}


class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key,required this.onboarding});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(onboarding:onboarding),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

   return Scaffold(

   );
  }
}
