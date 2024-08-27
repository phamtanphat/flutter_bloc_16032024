import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_16032024/counter.dart';
import 'package:flutter_bloc_16032024/counter_bloc.dart';
import 'package:flutter_bloc_16032024/counter_event.dart';

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
        child: BlocProvider(
          create: (context) => CounterBloc(),
          child: CounterWidget()
        )
      ),
    );
  }
}


class CounterWidget extends StatefulWidget {

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {

  late CounterBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, Counter>(
        listener: (_, __) => _,
        builder: (context, counter) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count: ${counter.value}", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {
                    bloc.add(Increase(count: 1));
                  }, child: Text("+")),
                  ElevatedButton(onPressed: () {}, child: Text("-")),
                  ElevatedButton(onPressed: () {}, child: Text("Reset"))
                ],
              )
            ],
          );
        },
    );
  }
}

