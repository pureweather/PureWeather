import 'package:PureWeather/accuweather/current/current_data_entity.dart';
import 'package:flutter/material.dart';

//detail type  widget
class TemperatureInfoWidget extends StatefulWidget {
  final CurrentDataEntity dataEntity;
  final int index;

  TemperatureInfoWidget(
      {Key key, @required this.dataEntity, @required this.index})
      : super(key: key);

  @override
  StatefulElement createElement() {
    // TODO: implement createElement
    return super.createElement();
  }

  @override
  _TemperatureInfoWidgetState createState() => _TemperatureInfoWidgetState();
}

class _TemperatureInfoWidgetState extends State<TemperatureInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.event),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(getType()),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(getValue()),
        )
      ],
    );
  }

  String getType() {
    switch (widget.index) {
      case 0:
        return "Humidity";
      case 1:
        return "Pressure";
      case 2:
        return "Wind Speed";
    }
  }

  String getValue() {
    if (widget.dataEntity == null) return "";
    switch (widget.index) {
      case 0:
        return widget.dataEntity.relativeHumidity.toString();
      //  "Humidity";
      case 1:
        return widget.dataEntity.pressure.metric.toString();
      case 2:
        return widget.dataEntity.wind.speed.metric.toString();
    }
  }
}
