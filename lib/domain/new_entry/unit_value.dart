class UnitValue {
  UnitValue({required this.unitIndex, required this.value});
  int unitIndex;
  double value;

  @override
  String toString() => 'UnitValue(unitIndex: $unitIndex, value: $value)';
}
