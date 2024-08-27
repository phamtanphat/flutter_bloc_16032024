import 'dart:async';

import '../demo_lib_bloc/counter.dart';
import '../demo_structure_bloc/structure_counter_event.dart';

class StructureCounterBloc {
  Counter counter = Counter(0);
  StreamController<StructureCounterEventBase> eventController = StreamController();
  StreamController<Counter> counterController = StreamController()..sink.add(Counter(0));

  StructureCounterBloc() {
    eventController.stream.listen((event) { 
      if (event is StructureCounterIncrease) {
        counter.value++;
        counterController.sink.add(counter);
      }
    });
  }
}
