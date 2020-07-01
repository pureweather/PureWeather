import 'package:PureWeather/accuweather/hourly/accu_hourly_data_entity.dart';
import 'package:PureWeather/home/HomeInfo.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

// ignore: must_be_immutable
class HomeDetailWidget extends StatefulWidget {
  final AccuHourlyDataEntity dataEntity;
  HomeInfo _homeInfo = HomeInfo();
  String placeName = "";

  HomeDetailWidget({Key key, this.dataEntity, this.placeName})
      : super(key: key);

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
            widget.placeName,
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            widget.dataEntity != null
                ? widget.dataEntity.dateTime.toString()
                : "Loading",
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
            widget.dataEntity != null
                ? widget.dataEntity.temperature.toString()
                : "26!",
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
      ],
    );
  }
}
