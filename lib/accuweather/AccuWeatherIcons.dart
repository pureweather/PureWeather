import 'package:flutter/widgets.dart';
import 'package:weather_icons/weather_icons.dart';

class AccuWeatherIcons {
  static IconData getIcon(int weatherIcon) {
    IconData iconData;
    switch (weatherIcon) {
      case 1:
        iconData = WeatherIcons.day_sunny;
        break; //Sunny
      case 2:
        iconData = WeatherIcons.day_sunny;

        break; //Mostly Sunny
      case 3:
        iconData = WeatherIcons.day_sunny;
        break; //Partly Sunny
      case 4:
        iconData = WeatherIcons.cloudy;
        break; //	Intermittent Clouds
      case 5:
        iconData = WeatherIcons.sunrise;
        break; //	Hazy Sunshine
      case 6:
        iconData = WeatherIcons.day_cloudy;
        break; //	Mostly Cloudy
      case 7:
        iconData = WeatherIcons.cloudy;
        break; //	Cloudy
      case 8:
        iconData = WeatherIcons.cloud_down;
        break; //	Dreary (Overcast)
      case 11:
        iconData = WeatherIcons.fog;
        break; //		Fog
      case 12:
        iconData = WeatherIcons.showers;
        break; //	Showers
      case 13:
        iconData = WeatherIcons.showers;
        break; //	Mostly Cloudy w/ Showers
      case 14:
        iconData = WeatherIcons.showers;
        break; //	Partly Sunny w/ Showers
      case 15:
        iconData = WeatherIcons.storm_showers;
        break; //	T-Storms
      case 16:
        iconData = WeatherIcons.storm_showers;
        break; //Mostly Cloudy w/ T-Storms
      case 17:
        iconData = WeatherIcons.storm_showers;
        break; //Partly Sunny w/ T-Storms
      case 18:
        iconData = WeatherIcons.rain;
        break; //Rain
      case 19:
        iconData = WeatherIcons.day_snow_thunderstorm;
        break; //Flurries
      case 20:
        iconData = WeatherIcons.day_snow_thunderstorm;
        break; //Mostly Cloudy w/ Flurries
      case 21:
        iconData = WeatherIcons.day_snow_thunderstorm;
        break; //Partly Sunny w/ Flurries
      case 22:
        iconData = WeatherIcons.snow;
        break; //	Snow
      case 23:
        iconData = WeatherIcons.snow;
        break; //Mostly Cloudy w/ Snow
      case 24:
        iconData = WeatherIcons.snowflake_cold;
        break; //Ice
      case 25:
        iconData = WeatherIcons.snowflake_cold;
        break; //Sleet
      case 26:
        iconData = WeatherIcons.rain;
        break; //Freezing Rain
      case 29:
        iconData = WeatherIcons.rain;
        break; //Rain and Snow
      case 30:
        iconData = WeatherIcons.hot;
        break; //Hot
      case 31:
        iconData = WeatherIcons.snowflake_cold;
        break; //Cold
      case 32:
        iconData = WeatherIcons.wind;
        break; //	Windy
      case 33:
        iconData = WeatherIcons.night_clear;
        break; //	Clear
      case 34:
        iconData = WeatherIcons.night_clear;
        break; //	Mostly Clear
      case 35:
        iconData = WeatherIcons.night_clear;
        break; //	Partly Cloudy
      case 36:
        iconData = WeatherIcons.cloud;
        break; //	Intermittent Clouds
      case 37:
        iconData = WeatherIcons.moonrise;
        break; //	Hazy Moonlight
      case 38:
        iconData = WeatherIcons.cloudy;
        break; //	Mostly Cloudy
      case 39:
        iconData = WeatherIcons.showers;
        break; //	Partly Cloudy w/ Showers
      case 40:
        iconData = WeatherIcons.showers;
        break; //	Mostly Cloudy w/ Showers
      case 41:
        iconData = WeatherIcons.storm_warning;
        break; //	Partly Cloudy w/ T-Storms
      case 42:
        iconData = WeatherIcons.storm_warning;
        break; //	Mostly Cloudy w/ T-Storms
      case 43:
        iconData = WeatherIcons.snow_wind;
        break; //	Mostly Cloudy w/ Flurries
      case 44:
        iconData = WeatherIcons.snow;
        break; //	Mostly Cloudy w/ Snow
    }
    return iconData;
  }
}
