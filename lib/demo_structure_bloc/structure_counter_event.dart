abstract class StructureCounterEventBase { }


class StructureCounterIncrease extends StructureCounterEventBase {
  int value;

  StructureCounterIncrease({required this.value});
}