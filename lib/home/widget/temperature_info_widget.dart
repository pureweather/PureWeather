import 'package:PureWeather/accuweather/current/current_data_entity.dart';
import 'package:PureWeather/widget/s_v_g_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:weather_icons/weather_icons.dart';

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
          child: getIcon(),
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

  SVGIcon getIcon() {
    switch (widget.index) {
      case 0:
        return SVGIcon("images/svg/ic_humidity.xml");
      case 1:
        return SVGIcon("images/svg/ic_pressure.xml");
      case 2:
        return SVGIcon("images/svg/ic_wind.xml");
        ;
    }
    return SVGIcon("images/svg/ic_humidity.xml");
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
