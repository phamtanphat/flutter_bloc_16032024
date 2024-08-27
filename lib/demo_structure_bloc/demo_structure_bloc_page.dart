import 'package:flutter/material.dart';

class DemoStructureBlocPage extends StatefulWidget {
  const DemoStructureBlocPage({super.key});

  @override
  State<DemoStructureBlocPage> createState() => _DemoStructureBlocPageState();
}

class _DemoStructureBlocPageState extends State<DemoStructureBlocPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Demo bloc page"),
      ),
      body: Container()
    );
  }
}
