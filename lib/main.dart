import 'package:flutter/material.dart';
import 'demo_lib_bloc/demo_bloc_page.dart';
import 'demo_structure_bloc/demo_structure_bloc_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoStructureBlocPage()
    );
  }
}

