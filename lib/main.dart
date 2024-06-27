import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/side_menu_controller.dart';
import 'package:provider/provider.dart';
// ignore: unused_import

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC4OchQZzEjj2t5xuNZO1TvNLtQYlMQyS4",
          authDomain: "campusbuzz-936d3.firebaseapp.com",
          databaseURL: "https://campusbuzz-936d3-default-rtdb.firebaseio.com",
          projectId: "campusbuzz-936d3",
          storageBucket: "campusbuzz-936d3.appspot.com",
          messagingSenderId: "367892879877",
          appId: "1:367892879877:web:48ad2771a14b4019049a6c",
          measurementId: "G-1V38RYCPJ9"));

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => SideMenuController())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
