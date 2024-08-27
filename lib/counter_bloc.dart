import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_16032024/counter.dart';
import 'package:flutter_bloc_16032024/counter_event.dart';

class CounterBloc extends Bloc<CounterEventBase, Counter> {
  CounterBloc() : super(Counter(0)) {
    on<Increase>((event, emit){
      var value = event.count + state.value;
      emit(Counter(value));
    });
  }
}