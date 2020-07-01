import 'package:PureWeather/home/HomeInfo.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class HomeDetailWidget extends StatefulWidget {
  HomeDetailWidget({Key key}) : super(key: key);

  @override
  _HomeDetailWidgetState createState() => _HomeDetailWidgetState();
}

class _HomeDetailWidgetState extends State<HomeDetailWidget> {
  HomeInfo _homeInfo;

  @override
  void initState() {
    // TODO: implement initState
    _homeInfo = HomeInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            _homeInfo.placeName,
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            _homeInfo.time,
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Icon(
            WeatherIcons.cloudy,
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            _homeInfo.temperature,
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
      ],
    );
  }
}
