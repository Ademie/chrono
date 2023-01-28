import 'package:chrono/screens/swipe.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => Authentication(),
        '/': (context) => Swipe()
        // '/': (context) => Entry('Create Account',  "Log in", "Already have an account?"),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
