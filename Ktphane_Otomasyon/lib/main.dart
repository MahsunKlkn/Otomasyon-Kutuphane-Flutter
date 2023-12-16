import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:otomasyon_kutuphane/kitap_listesi.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kütüphane Otomasyon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: KitapListesi(),
    );
  }
}
