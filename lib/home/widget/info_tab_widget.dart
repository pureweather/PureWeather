import 'package:PureWeather/accuweather/current/current_data_entity.dart';
import 'package:PureWeather/home/widget/temperature_info_widget.dart';
import 'package:flutter/material.dart';

class InfoTabWidget extends StatefulWidget {
  final CurrentDataEntity dataEntity;

  InfoTabWidget({Key key, @required this.dataEntity}) : super(key: key);

  @override
  _InfoTabWidgetState createState() => _InfoTabWidgetState();
}

class _InfoTabWidgetState extends State<InfoTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 3,
        child: TemperatureInfoWidget(
          dataEntity: widget.dataEntity,
          index: 0,
        ),
      ),
      Expanded(
        flex: 3,
        child: TemperatureInfoWidget(
          dataEntity: widget.dataEntity,
          index: 1,
        ),
      ),
      Expanded(
        flex: 3,
        child: TemperatureInfoWidget(
          dataEntity: widget.dataEntity,
          index: 2,
        ),
      )
    ]);
  }
}
