abstract class CounterEventBase { }

class Increase extends CounterEventBase {
  int count;

  Increase({required this.count});
}