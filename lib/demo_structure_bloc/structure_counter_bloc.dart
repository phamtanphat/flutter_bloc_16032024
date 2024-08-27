import 'dart:async';

import '../demo_lib_bloc/counter.dart';
import '../demo_structure_bloc/structure_counter_event.dart';

class StructureCounterBloc {
  StreamController<StructureCounterIncrease> eventController = StreamController();
  StreamController<Counter> counterController = StreamController();

  StructureCounterBloc() {
    
  }
}
