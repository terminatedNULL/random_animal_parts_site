import 'package:flutter/material.dart';
import 'package:random_animal_parts_site/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MaterialApp(
      title: 'Random Animal Parts',
      home: HomePage(),
    ),
  );
}