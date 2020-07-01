import 'package:PureWeather/accuweather/current/current_data_entity.dart';

currentDataEntityFromJson(CurrentDataEntity data, Map<String, dynamic> json) {
  if (json['LocalObservationDateTime'] != null) {
    data.localObservationDateTime =
        json['LocalObservationDateTime']?.toString();
  }
  if (json['EpochTime'] != null) {
    data.epochTime = json['EpochTime']?.toDouble();
  }
  if (json['WeatherText'] != null) {
    data.weatherText = json['WeatherText']?.toString();
  }
  if (json['WeatherIcon'] != null) {
    data.weatherIcon = json['WeatherIcon']?.toDouble();
  }
  if (json['HasPrecipitation'] != null) {
    data.hasPrecipitation = json['HasPrecipitation'];
  }
  if (json['PrecipitationType'] != null) {
    data.precipitationType = json['PrecipitationType'];
  }
  if (json['IsDayTime'] != null) {
    data.isDayTime = json['IsDayTime'];
  }
  if (json['Temperature'] != null) {
    data.temperature =
        new CurrentDataTemperature().fromJson(json['Temperature']);
  }
  if (json['RealFeelTemperature'] != null) {
    data.realFeelTemperature = new CurrentDataRealFeelTemperature()
        .fromJson(json['RealFeelTemperature']);
  }
  if (json['RealFeelTemperatureShade'] != null) {
    data.realFeelTemperatureShade = new CurrentDataRealFeelTemperatureShade()
        .fromJson(json['RealFeelTemperatureShade']);
  }
  if (json['RelativeHumidity'] != null) {
    data.relativeHumidity = json['RelativeHumidity']?.toDouble();
  }
  if (json['IndoorRelativeHumidity'] != null) {
    data.indoorRelativeHumidity = json['IndoorRelativeHumidity']?.toDouble();
  }
  if (json['DewPoint'] != null) {
    data.dewPoint = new CurrentDataDewPoint().fromJson(json['DewPoint']);
  }
  if (json['Wind'] != null) {
    data.wind = new CurrentDataWind().fromJson(json['Wind']);
  }
  if (json['WindGust'] != null) {
    data.windGust = new CurrentDataWindGust().fromJson(json['WindGust']);
  }
  if (json['UVIndex'] != null) {
    data.uVIndex = json['UVIndex']?.toDouble();
  }
  if (json['UVIndexText'] != null) {
    data.uVIndexText = json['UVIndexText']?.toString();
  }
  if (json['Visibility'] != null) {
    data.visibility = new CurrentDataVisibility().fromJson(json['Visibility']);
  }
  if (json['ObstructionsToVisibility'] != null) {
    data.obstructionsToVisibility =
        json['ObstructionsToVisibility']?.toString();
  }
  if (json['CloudCover'] != null) {
    data.cloudCover = json['CloudCover']?.toDouble();
  }
  if (json['Ceiling'] != null) {
    data.ceiling = new CurrentDataCeiling().fromJson(json['Ceiling']);
  }
  if (json['Pressure'] != null) {
    data.pressure = new CurrentDataPressure().fromJson(json['Pressure']);
  }
  if (json['PressureTendency'] != null) {
    data.pressureTendency =
        new CurrentDataPressureTendency().fromJson(json['PressureTendency']);
  }
  if (json['Past24HourTemperatureDeparture'] != null) {
    data.past24HourTemperatureDeparture =
        new CurrentDataPast24HourTemperatureDeparture()
            .fromJson(json['Past24HourTemperatureDeparture']);
  }
  if (json['ApparentTemperature'] != null) {
    data.apparentTemperature = new CurrentDataApparentTemperature()
        .fromJson(json['ApparentTemperature']);
  }
  if (json['WindChillTemperature'] != null) {
    data.windChillTemperature = new CurrentDataWindChillTemperature()
        .fromJson(json['WindChillTemperature']);
  }
  if (json['WetBulbTemperature'] != null) {
    data.wetBulbTemperature = new CurrentDataWetBulbTemperature()
        .fromJson(json['WetBulbTemperature']);
  }
  if (json['Precip1hr'] != null) {
    data.precip1hr = new CurrentDataPrecip1hr().fromJson(json['Precip1hr']);
  }
  if (json['PrecipitationSummary'] != null) {
    data.precipitationSummary = new CurrentDataPrecipitationSummary()
        .fromJson(json['PrecipitationSummary']);
  }
  if (json['TemperatureSummary'] != null) {
    data.temperatureSummary = new CurrentDataTemperatureSummary()
        .fromJson(json['TemperatureSummary']);
  }
  if (json['MobileLink'] != null) {
    data.mobileLink = json['MobileLink']?.toString();
  }
  if (json['Link'] != null) {
    data.link = json['Link']?.toString();
  }
  return data;
}

Map<String, dynamic> currentDataEntityToJson(CurrentDataEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['LocalObservationDateTime'] = entity.localObservationDateTime;
  data['EpochTime'] = entity.epochTime;
  data['WeatherText'] = entity.weatherText;
  data['WeatherIcon'] = entity.weatherIcon;
  data['HasPrecipitation'] = entity.hasPrecipitation;
  data['PrecipitationType'] = entity.precipitationType;
  data['IsDayTime'] = entity.isDayTime;
  if (entity.temperature != null) {
    data['Temperature'] = entity.temperature.toJson();
  }
  if (entity.realFeelTemperature != null) {
    data['RealFeelTemperature'] = entity.realFeelTemperature.toJson();
  }
  if (entity.realFeelTemperatureShade != null) {
    data['RealFeelTemperatureShade'] = entity.realFeelTemperatureShade.toJson();
  }
  data['RelativeHumidity'] = entity.relativeHumidity;
  data['IndoorRelativeHumidity'] = entity.indoorRelativeHumidity;
  if (entity.dewPoint != null) {
    data['DewPoint'] = entity.dewPoint.toJson();
  }
  if (entity.wind != null) {
    data['Wind'] = entity.wind.toJson();
  }
  if (entity.windGust != null) {
    data['WindGust'] = entity.windGust.toJson();
  }
  data['UVIndex'] = entity.uVIndex;
  data['UVIndexText'] = entity.uVIndexText;
  if (entity.visibility != null) {
    data['Visibility'] = entity.visibility.toJson();
  }
  data['ObstructionsToVisibility'] = entity.obstructionsToVisibility;
  data['CloudCover'] = entity.cloudCover;
  if (entity.ceiling != null) {
    data['Ceiling'] = entity.ceiling.toJson();
  }
  if (entity.pressure != null) {
    data['Pressure'] = entity.pressure.toJson();
  }
  if (entity.pressureTendency != null) {
    data['PressureTendency'] = entity.pressureTendency.toJson();
  }
  if (entity.past24HourTemperatureDeparture != null) {
    data['Past24HourTemperatureDeparture'] =
        entity.past24HourTemperatureDeparture.toJson();
  }
  if (entity.apparentTemperature != null) {
    data['ApparentTemperature'] = entity.apparentTemperature.toJson();
  }
  if (entity.windChillTemperature != null) {
    data['WindChillTemperature'] = entity.windChillTemperature.toJson();
  }
  if (entity.wetBulbTemperature != null) {
    data['WetBulbTemperature'] = entity.wetBulbTemperature.toJson();
  }
  if (entity.precip1hr != null) {
    data['Precip1hr'] = entity.precip1hr.toJson();
  }
  if (entity.precipitationSummary != null) {
    data['PrecipitationSummary'] = entity.precipitationSummary.toJson();
  }
  if (entity.temperatureSummary != null) {
    data['TemperatureSummary'] = entity.temperatureSummary.toJson();
  }
  data['MobileLink'] = entity.mobileLink;
  data['Link'] = entity.link;
  return data;
}

currentDataTemperatureFromJson(
    CurrentDataTemperature data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataTemperatureMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureToJson(
    CurrentDataTemperature entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureMetricFromJson(
    CurrentDataTemperatureMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureMetricToJson(
    CurrentDataTemperatureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureImperialFromJson(
    CurrentDataTemperatureImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureImperialToJson(
    CurrentDataTemperatureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataRealFeelTemperatureFromJson(
    CurrentDataRealFeelTemperature data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataRealFeelTemperatureMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataRealFeelTemperatureImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataRealFeelTemperatureToJson(
    CurrentDataRealFeelTemperature entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataRealFeelTemperatureMetricFromJson(
    CurrentDataRealFeelTemperatureMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataRealFeelTemperatureMetricToJson(
    CurrentDataRealFeelTemperatureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataRealFeelTemperatureImperialFromJson(
    CurrentDataRealFeelTemperatureImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataRealFeelTemperatureImperialToJson(
    CurrentDataRealFeelTemperatureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataRealFeelTemperatureShadeFromJson(
    CurrentDataRealFeelTemperatureShade data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataRealFeelTemperatureShadeMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataRealFeelTemperatureShadeImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataRealFeelTemperatureShadeToJson(
    CurrentDataRealFeelTemperatureShade entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataRealFeelTemperatureShadeMetricFromJson(
    CurrentDataRealFeelTemperatureShadeMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataRealFeelTemperatureShadeMetricToJson(
    CurrentDataRealFeelTemperatureShadeMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataRealFeelTemperatureShadeImperialFromJson(
    CurrentDataRealFeelTemperatureShadeImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataRealFeelTemperatureShadeImperialToJson(
    CurrentDataRealFeelTemperatureShadeImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataDewPointFromJson(
    CurrentDataDewPoint data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataDewPointMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataDewPointImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataDewPointToJson(CurrentDataDewPoint entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataDewPointMetricFromJson(
    CurrentDataDewPointMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataDewPointMetricToJson(
    CurrentDataDewPointMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataDewPointImperialFromJson(
    CurrentDataDewPointImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataDewPointImperialToJson(
    CurrentDataDewPointImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWindFromJson(CurrentDataWind data, Map<String, dynamic> json) {
  if (json['Direction'] != null) {
    data.direction = new CurrentDataWindDirection().fromJson(json['Direction']);
  }
  if (json['Speed'] != null) {
    data.speed = new CurrentDataWindSpeed().fromJson(json['Speed']);
  }
  return data;
}

Map<String, dynamic> currentDataWindToJson(CurrentDataWind entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.direction != null) {
    data['Direction'] = entity.direction.toJson();
  }
  if (entity.speed != null) {
    data['Speed'] = entity.speed.toJson();
  }
  return data;
}

currentDataWindDirectionFromJson(
    CurrentDataWindDirection data, Map<String, dynamic> json) {
  if (json['Degrees'] != null) {
    data.degrees = json['Degrees']?.toDouble();
  }
  if (json['Localized'] != null) {
    data.localized = json['Localized']?.toString();
  }
  if (json['English'] != null) {
    data.english = json['English']?.toString();
  }
  return data;
}

Map<String, dynamic> currentDataWindDirectionToJson(
    CurrentDataWindDirection entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Degrees'] = entity.degrees;
  data['Localized'] = entity.localized;
  data['English'] = entity.english;
  return data;
}

currentDataWindSpeedFromJson(
    CurrentDataWindSpeed data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataWindSpeedMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataWindSpeedImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataWindSpeedToJson(CurrentDataWindSpeed entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataWindSpeedMetricFromJson(
    CurrentDataWindSpeedMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWindSpeedMetricToJson(
    CurrentDataWindSpeedMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWindSpeedImperialFromJson(
    CurrentDataWindSpeedImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWindSpeedImperialToJson(
    CurrentDataWindSpeedImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWindGustFromJson(
    CurrentDataWindGust data, Map<String, dynamic> json) {
  if (json['Speed'] != null) {
    data.speed = new CurrentDataWindGustSpeed().fromJson(json['Speed']);
  }
  return data;
}

Map<String, dynamic> currentDataWindGustToJson(CurrentDataWindGust entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.speed != null) {
    data['Speed'] = entity.speed.toJson();
  }
  return data;
}

currentDataWindGustSpeedFromJson(
    CurrentDataWindGustSpeed data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataWindGustSpeedMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataWindGustSpeedImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataWindGustSpeedToJson(
    CurrentDataWindGustSpeed entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataWindGustSpeedMetricFromJson(
    CurrentDataWindGustSpeedMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWindGustSpeedMetricToJson(
    CurrentDataWindGustSpeedMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWindGustSpeedImperialFromJson(
    CurrentDataWindGustSpeedImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWindGustSpeedImperialToJson(
    CurrentDataWindGustSpeedImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataVisibilityFromJson(
    CurrentDataVisibility data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataVisibilityMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataVisibilityImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataVisibilityToJson(CurrentDataVisibility entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataVisibilityMetricFromJson(
    CurrentDataVisibilityMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataVisibilityMetricToJson(
    CurrentDataVisibilityMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataVisibilityImperialFromJson(
    CurrentDataVisibilityImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataVisibilityImperialToJson(
    CurrentDataVisibilityImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataCeilingFromJson(CurrentDataCeiling data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataCeilingMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataCeilingImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataCeilingToJson(CurrentDataCeiling entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataCeilingMetricFromJson(
    CurrentDataCeilingMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataCeilingMetricToJson(
    CurrentDataCeilingMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataCeilingImperialFromJson(
    CurrentDataCeilingImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataCeilingImperialToJson(
    CurrentDataCeilingImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPressureFromJson(
    CurrentDataPressure data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPressureMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataPressureImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPressureToJson(CurrentDataPressure entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPressureMetricFromJson(
    CurrentDataPressureMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPressureMetricToJson(
    CurrentDataPressureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPressureImperialFromJson(
    CurrentDataPressureImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPressureImperialToJson(
    CurrentDataPressureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPressureTendencyFromJson(
    CurrentDataPressureTendency data, Map<String, dynamic> json) {
  if (json['LocalizedText'] != null) {
    data.localizedText = json['LocalizedText']?.toString();
  }
  if (json['Code'] != null) {
    data.code = json['Code']?.toString();
  }
  return data;
}

Map<String, dynamic> currentDataPressureTendencyToJson(
    CurrentDataPressureTendency entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['LocalizedText'] = entity.localizedText;
  data['Code'] = entity.code;
  return data;
}

currentDataPast24HourTemperatureDepartureFromJson(
    CurrentDataPast24HourTemperatureDeparture data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPast24HourTemperatureDepartureMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPast24HourTemperatureDepartureImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPast24HourTemperatureDepartureToJson(
    CurrentDataPast24HourTemperatureDeparture entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPast24HourTemperatureDepartureMetricFromJson(
    CurrentDataPast24HourTemperatureDepartureMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPast24HourTemperatureDepartureMetricToJson(
    CurrentDataPast24HourTemperatureDepartureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPast24HourTemperatureDepartureImperialFromJson(
    CurrentDataPast24HourTemperatureDepartureImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPast24HourTemperatureDepartureImperialToJson(
    CurrentDataPast24HourTemperatureDepartureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataApparentTemperatureFromJson(
    CurrentDataApparentTemperature data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataApparentTemperatureMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataApparentTemperatureImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataApparentTemperatureToJson(
    CurrentDataApparentTemperature entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataApparentTemperatureMetricFromJson(
    CurrentDataApparentTemperatureMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataApparentTemperatureMetricToJson(
    CurrentDataApparentTemperatureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataApparentTemperatureImperialFromJson(
    CurrentDataApparentTemperatureImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataApparentTemperatureImperialToJson(
    CurrentDataApparentTemperatureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWindChillTemperatureFromJson(
    CurrentDataWindChillTemperature data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataWindChillTemperatureMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataWindChillTemperatureImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataWindChillTemperatureToJson(
    CurrentDataWindChillTemperature entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataWindChillTemperatureMetricFromJson(
    CurrentDataWindChillTemperatureMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWindChillTemperatureMetricToJson(
    CurrentDataWindChillTemperatureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWindChillTemperatureImperialFromJson(
    CurrentDataWindChillTemperatureImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWindChillTemperatureImperialToJson(
    CurrentDataWindChillTemperatureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWetBulbTemperatureFromJson(
    CurrentDataWetBulbTemperature data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataWetBulbTemperatureMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataWetBulbTemperatureImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataWetBulbTemperatureToJson(
    CurrentDataWetBulbTemperature entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataWetBulbTemperatureMetricFromJson(
    CurrentDataWetBulbTemperatureMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWetBulbTemperatureMetricToJson(
    CurrentDataWetBulbTemperatureMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataWetBulbTemperatureImperialFromJson(
    CurrentDataWetBulbTemperatureImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataWetBulbTemperatureImperialToJson(
    CurrentDataWetBulbTemperatureImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecip1hrFromJson(
    CurrentDataPrecip1hr data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecip1hrMetric().fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataPrecip1hrImperial().fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecip1hrToJson(CurrentDataPrecip1hr entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecip1hrMetricFromJson(
    CurrentDataPrecip1hrMetric data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecip1hrMetricToJson(
    CurrentDataPrecip1hrMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecip1hrImperialFromJson(
    CurrentDataPrecip1hrImperial data, Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecip1hrImperialToJson(
    CurrentDataPrecip1hrImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryFromJson(
    CurrentDataPrecipitationSummary data, Map<String, dynamic> json) {
  if (json['Precipitation'] != null) {
    data.precipitation = new CurrentDataPrecipitationSummaryPrecipitation()
        .fromJson(json['Precipitation']);
  }
  if (json['PastHour'] != null) {
    data.pastHour = new CurrentDataPrecipitationSummaryPastHour()
        .fromJson(json['PastHour']);
  }
  if (json['Past3Hours'] != null) {
    data.past3Hours = new CurrentDataPrecipitationSummaryPast3Hours()
        .fromJson(json['Past3Hours']);
  }
  if (json['Past6Hours'] != null) {
    data.past6Hours = new CurrentDataPrecipitationSummaryPast6Hours()
        .fromJson(json['Past6Hours']);
  }
  if (json['Past9Hours'] != null) {
    data.past9Hours = new CurrentDataPrecipitationSummaryPast9Hours()
        .fromJson(json['Past9Hours']);
  }
  if (json['Past12Hours'] != null) {
    data.past12Hours = new CurrentDataPrecipitationSummaryPast12Hours()
        .fromJson(json['Past12Hours']);
  }
  if (json['Past18Hours'] != null) {
    data.past18Hours = new CurrentDataPrecipitationSummaryPast18Hours()
        .fromJson(json['Past18Hours']);
  }
  if (json['Past24Hours'] != null) {
    data.past24Hours = new CurrentDataPrecipitationSummaryPast24Hours()
        .fromJson(json['Past24Hours']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryToJson(
    CurrentDataPrecipitationSummary entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.precipitation != null) {
    data['Precipitation'] = entity.precipitation.toJson();
  }
  if (entity.pastHour != null) {
    data['PastHour'] = entity.pastHour.toJson();
  }
  if (entity.past3Hours != null) {
    data['Past3Hours'] = entity.past3Hours.toJson();
  }
  if (entity.past6Hours != null) {
    data['Past6Hours'] = entity.past6Hours.toJson();
  }
  if (entity.past9Hours != null) {
    data['Past9Hours'] = entity.past9Hours.toJson();
  }
  if (entity.past12Hours != null) {
    data['Past12Hours'] = entity.past12Hours.toJson();
  }
  if (entity.past18Hours != null) {
    data['Past18Hours'] = entity.past18Hours.toJson();
  }
  if (entity.past24Hours != null) {
    data['Past24Hours'] = entity.past24Hours.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPrecipitationFromJson(
    CurrentDataPrecipitationSummaryPrecipitation data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPrecipitationMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPrecipitationImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPrecipitationToJson(
    CurrentDataPrecipitationSummaryPrecipitation entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPrecipitationMetricFromJson(
    CurrentDataPrecipitationSummaryPrecipitationMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPrecipitationMetricToJson(
    CurrentDataPrecipitationSummaryPrecipitationMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPrecipitationImperialFromJson(
    CurrentDataPrecipitationSummaryPrecipitationImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPrecipitationImperialToJson(
    CurrentDataPrecipitationSummaryPrecipitationImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPastHourFromJson(
    CurrentDataPrecipitationSummaryPastHour data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPastHourMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPastHourImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPastHourToJson(
    CurrentDataPrecipitationSummaryPastHour entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPastHourMetricFromJson(
    CurrentDataPrecipitationSummaryPastHourMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPastHourMetricToJson(
    CurrentDataPrecipitationSummaryPastHourMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPastHourImperialFromJson(
    CurrentDataPrecipitationSummaryPastHourImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPastHourImperialToJson(
    CurrentDataPrecipitationSummaryPastHourImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast3HoursFromJson(
    CurrentDataPrecipitationSummaryPast3Hours data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPast3HoursMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPast3HoursImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast3HoursToJson(
    CurrentDataPrecipitationSummaryPast3Hours entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPast3HoursMetricFromJson(
    CurrentDataPrecipitationSummaryPast3HoursMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast3HoursMetricToJson(
    CurrentDataPrecipitationSummaryPast3HoursMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast3HoursImperialFromJson(
    CurrentDataPrecipitationSummaryPast3HoursImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast3HoursImperialToJson(
    CurrentDataPrecipitationSummaryPast3HoursImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast6HoursFromJson(
    CurrentDataPrecipitationSummaryPast6Hours data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPast6HoursMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPast6HoursImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast6HoursToJson(
    CurrentDataPrecipitationSummaryPast6Hours entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPast6HoursMetricFromJson(
    CurrentDataPrecipitationSummaryPast6HoursMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast6HoursMetricToJson(
    CurrentDataPrecipitationSummaryPast6HoursMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast6HoursImperialFromJson(
    CurrentDataPrecipitationSummaryPast6HoursImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast6HoursImperialToJson(
    CurrentDataPrecipitationSummaryPast6HoursImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast9HoursFromJson(
    CurrentDataPrecipitationSummaryPast9Hours data, Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPast9HoursMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPast9HoursImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast9HoursToJson(
    CurrentDataPrecipitationSummaryPast9Hours entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPast9HoursMetricFromJson(
    CurrentDataPrecipitationSummaryPast9HoursMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast9HoursMetricToJson(
    CurrentDataPrecipitationSummaryPast9HoursMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast9HoursImperialFromJson(
    CurrentDataPrecipitationSummaryPast9HoursImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast9HoursImperialToJson(
    CurrentDataPrecipitationSummaryPast9HoursImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast12HoursFromJson(
    CurrentDataPrecipitationSummaryPast12Hours data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPast12HoursMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPast12HoursImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast12HoursToJson(
    CurrentDataPrecipitationSummaryPast12Hours entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPast12HoursMetricFromJson(
    CurrentDataPrecipitationSummaryPast12HoursMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast12HoursMetricToJson(
    CurrentDataPrecipitationSummaryPast12HoursMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast12HoursImperialFromJson(
    CurrentDataPrecipitationSummaryPast12HoursImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast12HoursImperialToJson(
    CurrentDataPrecipitationSummaryPast12HoursImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast18HoursFromJson(
    CurrentDataPrecipitationSummaryPast18Hours data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPast18HoursMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPast18HoursImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast18HoursToJson(
    CurrentDataPrecipitationSummaryPast18Hours entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPast18HoursMetricFromJson(
    CurrentDataPrecipitationSummaryPast18HoursMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast18HoursMetricToJson(
    CurrentDataPrecipitationSummaryPast18HoursMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast18HoursImperialFromJson(
    CurrentDataPrecipitationSummaryPast18HoursImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast18HoursImperialToJson(
    CurrentDataPrecipitationSummaryPast18HoursImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast24HoursFromJson(
    CurrentDataPrecipitationSummaryPast24Hours data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataPrecipitationSummaryPast24HoursMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial = new CurrentDataPrecipitationSummaryPast24HoursImperial()
        .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast24HoursToJson(
    CurrentDataPrecipitationSummaryPast24Hours entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataPrecipitationSummaryPast24HoursMetricFromJson(
    CurrentDataPrecipitationSummaryPast24HoursMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast24HoursMetricToJson(
    CurrentDataPrecipitationSummaryPast24HoursMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataPrecipitationSummaryPast24HoursImperialFromJson(
    CurrentDataPrecipitationSummaryPast24HoursImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentDataPrecipitationSummaryPast24HoursImperialToJson(
    CurrentDataPrecipitationSummaryPast24HoursImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryFromJson(
    CurrentDataTemperatureSummary data, Map<String, dynamic> json) {
  if (json['Past6HourRange'] != null) {
    data.past6HourRange = new CurrentDataTemperatureSummaryPast6HourRange()
        .fromJson(json['Past6HourRange']);
  }
  if (json['Past12HourRange'] != null) {
    data.past12HourRange = new CurrentDataTemperatureSummaryPast12HourRange()
        .fromJson(json['Past12HourRange']);
  }
  if (json['Past24HourRange'] != null) {
    data.past24HourRange = new CurrentDataTemperatureSummaryPast24HourRange()
        .fromJson(json['Past24HourRange']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryToJson(
    CurrentDataTemperatureSummary entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.past6HourRange != null) {
    data['Past6HourRange'] = entity.past6HourRange.toJson();
  }
  if (entity.past12HourRange != null) {
    data['Past12HourRange'] = entity.past12HourRange.toJson();
  }
  if (entity.past24HourRange != null) {
    data['Past24HourRange'] = entity.past24HourRange.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast6HourRangeFromJson(
    CurrentDataTemperatureSummaryPast6HourRange data,
    Map<String, dynamic> json) {
  if (json['Minimum'] != null) {
    data.minimum = new CurrentDataTemperatureSummaryPast6HourRangeMinimum()
        .fromJson(json['Minimum']);
  }
  if (json['Maximum'] != null) {
    data.maximum = new CurrentDataTemperatureSummaryPast6HourRangeMaximum()
        .fromJson(json['Maximum']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast6HourRangeToJson(
    CurrentDataTemperatureSummaryPast6HourRange entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.minimum != null) {
    data['Minimum'] = entity.minimum.toJson();
  }
  if (entity.maximum != null) {
    data['Maximum'] = entity.maximum.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast6HourRangeMinimumFromJson(
    CurrentDataTemperatureSummaryPast6HourRangeMinimum data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataTemperatureSummaryPast6HourRangeMinimumMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureSummaryPast6HourRangeMinimumImperial()
            .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast6HourRangeMinimumToJson(
    CurrentDataTemperatureSummaryPast6HourRangeMinimum entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast6HourRangeMinimumMetricFromJson(
    CurrentDataTemperatureSummaryPast6HourRangeMinimumMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast6HourRangeMinimumMetricToJson(
        CurrentDataTemperatureSummaryPast6HourRangeMinimumMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast6HourRangeMinimumImperialFromJson(
    CurrentDataTemperatureSummaryPast6HourRangeMinimumImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast6HourRangeMinimumImperialToJson(
        CurrentDataTemperatureSummaryPast6HourRangeMinimumImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast6HourRangeMaximumFromJson(
    CurrentDataTemperatureSummaryPast6HourRangeMaximum data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric = new CurrentDataTemperatureSummaryPast6HourRangeMaximumMetric()
        .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureSummaryPast6HourRangeMaximumImperial()
            .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast6HourRangeMaximumToJson(
    CurrentDataTemperatureSummaryPast6HourRangeMaximum entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast6HourRangeMaximumMetricFromJson(
    CurrentDataTemperatureSummaryPast6HourRangeMaximumMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast6HourRangeMaximumMetricToJson(
        CurrentDataTemperatureSummaryPast6HourRangeMaximumMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast6HourRangeMaximumImperialFromJson(
    CurrentDataTemperatureSummaryPast6HourRangeMaximumImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast6HourRangeMaximumImperialToJson(
        CurrentDataTemperatureSummaryPast6HourRangeMaximumImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast12HourRangeFromJson(
    CurrentDataTemperatureSummaryPast12HourRange data,
    Map<String, dynamic> json) {
  if (json['Minimum'] != null) {
    data.minimum = new CurrentDataTemperatureSummaryPast12HourRangeMinimum()
        .fromJson(json['Minimum']);
  }
  if (json['Maximum'] != null) {
    data.maximum = new CurrentDataTemperatureSummaryPast12HourRangeMaximum()
        .fromJson(json['Maximum']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast12HourRangeToJson(
    CurrentDataTemperatureSummaryPast12HourRange entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.minimum != null) {
    data['Minimum'] = entity.minimum.toJson();
  }
  if (entity.maximum != null) {
    data['Maximum'] = entity.maximum.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast12HourRangeMinimumFromJson(
    CurrentDataTemperatureSummaryPast12HourRangeMinimum data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataTemperatureSummaryPast12HourRangeMinimumMetric()
            .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureSummaryPast12HourRangeMinimumImperial()
            .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast12HourRangeMinimumToJson(
    CurrentDataTemperatureSummaryPast12HourRangeMinimum entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast12HourRangeMinimumMetricFromJson(
    CurrentDataTemperatureSummaryPast12HourRangeMinimumMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast12HourRangeMinimumMetricToJson(
        CurrentDataTemperatureSummaryPast12HourRangeMinimumMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast12HourRangeMinimumImperialFromJson(
    CurrentDataTemperatureSummaryPast12HourRangeMinimumImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast12HourRangeMinimumImperialToJson(
        CurrentDataTemperatureSummaryPast12HourRangeMinimumImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast12HourRangeMaximumFromJson(
    CurrentDataTemperatureSummaryPast12HourRangeMaximum data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataTemperatureSummaryPast12HourRangeMaximumMetric()
            .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureSummaryPast12HourRangeMaximumImperial()
            .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast12HourRangeMaximumToJson(
    CurrentDataTemperatureSummaryPast12HourRangeMaximum entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast12HourRangeMaximumMetricFromJson(
    CurrentDataTemperatureSummaryPast12HourRangeMaximumMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast12HourRangeMaximumMetricToJson(
        CurrentDataTemperatureSummaryPast12HourRangeMaximumMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast12HourRangeMaximumImperialFromJson(
    CurrentDataTemperatureSummaryPast12HourRangeMaximumImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast12HourRangeMaximumImperialToJson(
        CurrentDataTemperatureSummaryPast12HourRangeMaximumImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast24HourRangeFromJson(
    CurrentDataTemperatureSummaryPast24HourRange data,
    Map<String, dynamic> json) {
  if (json['Minimum'] != null) {
    data.minimum = new CurrentDataTemperatureSummaryPast24HourRangeMinimum()
        .fromJson(json['Minimum']);
  }
  if (json['Maximum'] != null) {
    data.maximum = new CurrentDataTemperatureSummaryPast24HourRangeMaximum()
        .fromJson(json['Maximum']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast24HourRangeToJson(
    CurrentDataTemperatureSummaryPast24HourRange entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.minimum != null) {
    data['Minimum'] = entity.minimum.toJson();
  }
  if (entity.maximum != null) {
    data['Maximum'] = entity.maximum.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast24HourRangeMinimumFromJson(
    CurrentDataTemperatureSummaryPast24HourRangeMinimum data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataTemperatureSummaryPast24HourRangeMinimumMetric()
            .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureSummaryPast24HourRangeMinimumImperial()
            .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast24HourRangeMinimumToJson(
    CurrentDataTemperatureSummaryPast24HourRangeMinimum entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast24HourRangeMinimumMetricFromJson(
    CurrentDataTemperatureSummaryPast24HourRangeMinimumMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast24HourRangeMinimumMetricToJson(
        CurrentDataTemperatureSummaryPast24HourRangeMinimumMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast24HourRangeMinimumImperialFromJson(
    CurrentDataTemperatureSummaryPast24HourRangeMinimumImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast24HourRangeMinimumImperialToJson(
        CurrentDataTemperatureSummaryPast24HourRangeMinimumImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast24HourRangeMaximumFromJson(
    CurrentDataTemperatureSummaryPast24HourRangeMaximum data,
    Map<String, dynamic> json) {
  if (json['Metric'] != null) {
    data.metric =
        new CurrentDataTemperatureSummaryPast24HourRangeMaximumMetric()
            .fromJson(json['Metric']);
  }
  if (json['Imperial'] != null) {
    data.imperial =
        new CurrentDataTemperatureSummaryPast24HourRangeMaximumImperial()
            .fromJson(json['Imperial']);
  }
  return data;
}

Map<String, dynamic> currentDataTemperatureSummaryPast24HourRangeMaximumToJson(
    CurrentDataTemperatureSummaryPast24HourRangeMaximum entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.metric != null) {
    data['Metric'] = entity.metric.toJson();
  }
  if (entity.imperial != null) {
    data['Imperial'] = entity.imperial.toJson();
  }
  return data;
}

currentDataTemperatureSummaryPast24HourRangeMaximumMetricFromJson(
    CurrentDataTemperatureSummaryPast24HourRangeMaximumMetric data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast24HourRangeMaximumMetricToJson(
        CurrentDataTemperatureSummaryPast24HourRangeMaximumMetric entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}

currentDataTemperatureSummaryPast24HourRangeMaximumImperialFromJson(
    CurrentDataTemperatureSummaryPast24HourRangeMaximumImperial data,
    Map<String, dynamic> json) {
  if (json['Value'] != null) {
    data.value = json['Value']?.toDouble();
  }
  if (json['Unit'] != null) {
    data.unit = json['Unit']?.toString();
  }
  if (json['UnitType'] != null) {
    data.unitType = json['UnitType']?.toDouble();
  }
  return data;
}

Map<String, dynamic>
    currentDataTemperatureSummaryPast24HourRangeMaximumImperialToJson(
        CurrentDataTemperatureSummaryPast24HourRangeMaximumImperial entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Value'] = entity.value;
  data['Unit'] = entity.unit;
  data['UnitType'] = entity.unitType;
  return data;
}
