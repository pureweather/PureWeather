import 'package:PureWeather/home/widget/temperature_info_widget.dart';
import 'package:flutter/material.dart';

class InfoTabWidget extends StatefulWidget {
  InfoTabWidget({Key key}) : super(key: key);

  @override
  _InfoTabWidgetState createState() => _InfoTabWidgetState();
}

class _InfoTabWidgetState extends State<InfoTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 3,
        child: TemperatureInfoWidget(),
      ),
      Expanded(
        flex: 3,
        child: TemperatureInfoWidget(),
      ),
      Expanded(
        flex: 3,
        child: TemperatureInfoWidget(),
      )
    ]);
  }
}
