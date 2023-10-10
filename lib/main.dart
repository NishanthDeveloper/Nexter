import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nexter/helper/helper_function.dart';
import 'package:nexter/screens/home_screen.dart';
import 'package:nexter/screens/landing_page.dart';
import 'package:nexter/screens/login_page.dart';
import 'package:nexter/screens/signup_screen.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async{
    await HelperFunction.getUserLoggedInStatus().then((value) {
      if(value != null){
        setState(() {
          _isSignedIn = value;
        });

      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexter',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  _isSignedIn ? HomeScreen() : LandingScreen(),
    );
  }
}
