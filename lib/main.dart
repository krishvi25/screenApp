import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/provider/value_provider.dart';
import 'presentation/screens/screen_a.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ValueProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ScreenA(),
      debugShowCheckedModeBanner: false,
    );
  }
}

