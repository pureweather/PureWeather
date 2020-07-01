import 'package:PureWeather/accuweather/AccuWeatherIcons.dart';
import 'package:PureWeather/accuweather/current/current_data_entity.dart';
import 'package:PureWeather/accuweather/hourly/accu_hourly_data_entity.dart';
import 'package:PureWeather/home/HomeInfo.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

// ignore: must_be_immutable
class HomeDetailWidget extends StatefulWidget {
  final CurrentDataEntity dataEntity;
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
                ? DateUtil.formatDate(
                DateTime.parse(widget.dataEntity.localObservationDateTime),
                format:
                "yyyy-MM-dd HH:mm:ss") //.widget.dataEntity.dateTime.toString()
                : "Loading",
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Icon(
            widget.dataEntity != null
                ? AccuWeatherIcons.getIcon(widget.dataEntity.weatherIcon)
                : WeatherIcons.day_sunny,
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            widget.dataEntity != null
                ? widget.dataEntity.temperature.metric.toString()
                : "26!",
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            widget.dataEntity != null
                ? widget.dataEntity.weatherText
                : "loading",
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
      ],
    );
  }
}
