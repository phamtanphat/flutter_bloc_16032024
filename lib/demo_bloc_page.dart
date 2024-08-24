import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_16032024/counter.dart';
import 'package:flutter_bloc_16032024/counter_bloc.dart';

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
        child: BlocBuilder<CounterBloc, Counter>(
            bloc: CounterBloc(),
            builder: (context, state) {
              return CounterWidget(state);
            },
        )
      ),
    );
  }
}


class CounterWidget extends StatelessWidget {
  Counter counter;

  CounterWidget(this.counter);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Count: ${counter.value}", style: TextStyle(fontSize: 20)),
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
    );
  }
}

