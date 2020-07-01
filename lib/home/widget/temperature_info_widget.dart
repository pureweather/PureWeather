import 'package:flutter/material.dart';

//detail type  widget
class TemperatureInfoWidget extends StatefulWidget {
  TemperatureInfoWidget({Key key}) : super(key: key);

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
          child: Text("type"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("value"),
        )
      ],
    );
  }
}
