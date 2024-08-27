import 'package:flutter/material.dart';
import 'package:flutter_bloc_16032024/demo_structure_bloc/structure_counter_bloc.dart';
import 'package:flutter_bloc_16032024/demo_structure_bloc/structure_counter_event.dart';
import 'package:provider/provider.dart';

class DemoStructureBlocPage extends StatefulWidget {
  const DemoStructureBlocPage({super.key});

  @override
  State<DemoStructureBlocPage> createState() => _DemoStructureBlocPageState();
}

class _DemoStructureBlocPageState extends State<DemoStructureBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo structure bloc page"),
        ),
        body: Provider(
            create: (context) => StructureCounterBloc(),
            child: StructureBlocWidget()
        )
    );
  }
}

class StructureBlocWidget extends StatefulWidget {
  @override
  State<StructureBlocWidget> createState() => _StructureBlocWidgetState();
}

class _StructureBlocWidgetState extends State<StructureBlocWidget> {
  StructureCounterBloc? bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = Provider.of(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc?.counterController.stream,
      builder: (context, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: ${snapshot.data?.value}", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  bloc?.eventController.sink.add(StructureCounterIncrease(value: 1));
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
