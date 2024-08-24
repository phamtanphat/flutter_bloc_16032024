import 'package:flutter/material.dart';

class DemoBlocPage extends StatefulWidget {
  const DemoBlocPage({super.key});

  @override
  State<DemoBlocPage> createState() => _DemoBlocPageState();
}

class _DemoBlocPageState extends State<DemoBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo bloc page"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: ", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("+")),
                ElevatedButton(onPressed: () {}, child: Text("-")),
                ElevatedButton(onPressed: () {}, child: Text("Reset"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
