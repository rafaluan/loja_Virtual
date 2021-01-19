import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp()); //Sendo  MyApp  seu  aplicativo }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter's Food",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 4, 125, 141)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
