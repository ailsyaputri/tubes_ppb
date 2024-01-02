import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tooma_app/routes.dart';
import 'package:tooma_app/screens/auth/welcome.dart';
import 'package:tooma_app/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAd27PbR23vqZiQle0ZaXkIj5CftF2F3bw",
            appId: "1:26896868681:web:3ca9370779ef1b84826698",
            messagingSenderId: "26896868681",
            projectId: "tooma-app-5e812"));
  } else {}

  runApp(const ToomaApp());
}

class ToomaApp extends StatelessWidget {
  const ToomaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TOOMA',
      theme: appTheme(),
      routes: routes,
      home: const WelcomeScreen(),
    );
  }
}
