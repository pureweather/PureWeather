import 'package:PureWeather/accuweather/hourly/accu_hourly_data_entity.dart';
import 'package:PureWeather/home/HomeInfo.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class HomeDetailWidget extends StatelessWidget {
  AccuHourlyDataEntity accuHourlyDataEntity;
  HomeInfo _homeInfo = HomeInfo();
  String placeName="";

  HomeDetailWidget(AccuHourlyDataEntity accuHourlyDataEntity,String placeName, {Key key})
      : super(key: key) {
    this.accuHourlyDataEntity = accuHourlyDataEntity;
    this.placeName=placeName;
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
            placeName,
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
            WeatherIcons.night_partly_cloudy,
            color: Colors.green,
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            accuHourlyDataEntity == null
                ? "26"
                : accuHourlyDataEntity.temperature.toString(),
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(),
          ),
        ),
      ],
    );
  }
}
