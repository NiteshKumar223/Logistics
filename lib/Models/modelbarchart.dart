import 'package:charts_flutter/flutter.dart' as charts;


class ModelBarChart{
  String item;
  int count;
  final charts.Color color;

  ModelBarChart({
    required this.item,
    required this.count,
    required this.color,
  });
}
