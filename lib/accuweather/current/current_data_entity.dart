import 'package:PureWeather/generated/json/base/json_convert_content.dart';
import 'package:PureWeather/generated/json/base/json_filed.dart';

class CurrentDataEntity with JsonConvert<CurrentDataEntity> {
  @JSONField(name: "LocalObservationDateTime")
  String localObservationDateTime;
  @JSONField(name: "EpochTime")
  double epochTime;
  @JSONField(name: "WeatherText")
  String weatherText;
  @JSONField(name: "WeatherIcon")
  double weatherIcon;
  @JSONField(name: "HasPrecipitation")
  bool hasPrecipitation;
  @JSONField(name: "PrecipitationType")
  dynamic precipitationType;
  @JSONField(name: "IsDayTime")
  bool isDayTime;
  @JSONField(name: "Temperature")
  CurrentDataTemperature temperature;
  @JSONField(name: "RealFeelTemperature")
  CurrentDataRealFeelTemperature realFeelTemperature;
  @JSONField(name: "RealFeelTemperatureShade")
  CurrentDataRealFeelTemperatureShade realFeelTemperatureShade;
  @JSONField(name: "RelativeHumidity")
  double relativeHumidity;
  @JSONField(name: "IndoorRelativeHumidity")
  double indoorRelativeHumidity;
  @JSONField(name: "DewPoint")
  CurrentDataDewPoint dewPoint;
  @JSONField(name: "Wind")
  CurrentDataWind wind;
  @JSONField(name: "WindGust")
  CurrentDataWindGust windGust;
  @JSONField(name: "UVIndex")
  double uVIndex;
  @JSONField(name: "UVIndexText")
  String uVIndexText;
  @JSONField(name: "Visibility")
  CurrentDataVisibility visibility;
  @JSONField(name: "ObstructionsToVisibility")
  String obstructionsToVisibility;
  @JSONField(name: "CloudCover")
  double cloudCover;
  @JSONField(name: "Ceiling")
  CurrentDataCeiling ceiling;
  @JSONField(name: "Pressure")
  CurrentDataPressure pressure;
  @JSONField(name: "PressureTendency")
  CurrentDataPressureTendency pressureTendency;
  @JSONField(name: "Past24HourTemperatureDeparture")
  CurrentDataPast24HourTemperatureDeparture past24HourTemperatureDeparture;
  @JSONField(name: "ApparentTemperature")
  CurrentDataApparentTemperature apparentTemperature;
  @JSONField(name: "WindChillTemperature")
  CurrentDataWindChillTemperature windChillTemperature;
  @JSONField(name: "WetBulbTemperature")
  CurrentDataWetBulbTemperature wetBulbTemperature;
  @JSONField(name: "Precip1hr")
  CurrentDataPrecip1hr precip1hr;
  @JSONField(name: "PrecipitationSummary")
  CurrentDataPrecipitationSummary precipitationSummary;
  @JSONField(name: "TemperatureSummary")
  CurrentDataTemperatureSummary temperatureSummary;
  @JSONField(name: "MobileLink")
  String mobileLink;
  @JSONField(name: "Link")
  String link;
}

class CurrentDataTemperature with JsonConvert<CurrentDataTemperature> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureImperial imperial;
}

class CurrentDataTemperatureMetric
    with JsonConvert<CurrentDataTemperatureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;

  @override
  String toString() {
    return ' $value $unit';
  }

  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureImperial
    with JsonConvert<CurrentDataTemperatureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataRealFeelTemperature
    with JsonConvert<CurrentDataRealFeelTemperature> {
  @JSONField(name: "Metric")
  CurrentDataRealFeelTemperatureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataRealFeelTemperatureImperial imperial;
}

class CurrentDataRealFeelTemperatureMetric
    with JsonConvert<CurrentDataRealFeelTemperatureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataRealFeelTemperatureImperial
    with JsonConvert<CurrentDataRealFeelTemperatureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataRealFeelTemperatureShade
    with JsonConvert<CurrentDataRealFeelTemperatureShade> {
  @JSONField(name: "Metric")
  CurrentDataRealFeelTemperatureShadeMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataRealFeelTemperatureShadeImperial imperial;
}

class CurrentDataRealFeelTemperatureShadeMetric
    with JsonConvert<CurrentDataRealFeelTemperatureShadeMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataRealFeelTemperatureShadeImperial
    with JsonConvert<CurrentDataRealFeelTemperatureShadeImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataDewPoint with JsonConvert<CurrentDataDewPoint> {
  @JSONField(name: "Metric")
  CurrentDataDewPointMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataDewPointImperial imperial;
}

class CurrentDataDewPointMetric with JsonConvert<CurrentDataDewPointMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataDewPointImperial
    with JsonConvert<CurrentDataDewPointImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWind with JsonConvert<CurrentDataWind> {
  @JSONField(name: "Direction")
  CurrentDataWindDirection direction;
  @JSONField(name: "Speed")
  CurrentDataWindSpeed speed;
}

class CurrentDataWindDirection with JsonConvert<CurrentDataWindDirection> {
  @JSONField(name: "Degrees")
  double degrees;
  @JSONField(name: "Localized")
  String localized;
  @JSONField(name: "English")
  String english;
}

class CurrentDataWindSpeed with JsonConvert<CurrentDataWindSpeed> {
  @JSONField(name: "Metric")
  CurrentDataWindSpeedMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataWindSpeedImperial imperial;
}

class CurrentDataWindSpeedMetric with JsonConvert<CurrentDataWindSpeedMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;

  @override
  String toString() {
    return '$value $unit';
  }

  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWindSpeedImperial
    with JsonConvert<CurrentDataWindSpeedImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWindGust with JsonConvert<CurrentDataWindGust> {
  @JSONField(name: "Speed")
  CurrentDataWindGustSpeed speed;
}

class CurrentDataWindGustSpeed with JsonConvert<CurrentDataWindGustSpeed> {
  @JSONField(name: "Metric")
  CurrentDataWindGustSpeedMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataWindGustSpeedImperial imperial;
}

class CurrentDataWindGustSpeedMetric
    with JsonConvert<CurrentDataWindGustSpeedMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWindGustSpeedImperial
    with JsonConvert<CurrentDataWindGustSpeedImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataVisibility with JsonConvert<CurrentDataVisibility> {
  @JSONField(name: "Metric")
  CurrentDataVisibilityMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataVisibilityImperial imperial;
}

class CurrentDataVisibilityMetric
    with JsonConvert<CurrentDataVisibilityMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataVisibilityImperial
    with JsonConvert<CurrentDataVisibilityImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataCeiling with JsonConvert<CurrentDataCeiling> {
  @JSONField(name: "Metric")
  CurrentDataCeilingMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataCeilingImperial imperial;
}

class CurrentDataCeilingMetric with JsonConvert<CurrentDataCeilingMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataCeilingImperial with JsonConvert<CurrentDataCeilingImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPressure with JsonConvert<CurrentDataPressure> {
  @JSONField(name: "Metric")
  CurrentDataPressureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPressureImperial imperial;
}

class CurrentDataPressureMetric with JsonConvert<CurrentDataPressureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;

  @override
  String toString() {
    return '$value $unit';
  }

  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPressureImperial
    with JsonConvert<CurrentDataPressureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPressureTendency
    with JsonConvert<CurrentDataPressureTendency> {
  @JSONField(name: "LocalizedText")
  String localizedText;
  @JSONField(name: "Code")
  String code;
}

class CurrentDataPast24HourTemperatureDeparture
    with JsonConvert<CurrentDataPast24HourTemperatureDeparture> {
  @JSONField(name: "Metric")
  CurrentDataPast24HourTemperatureDepartureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPast24HourTemperatureDepartureImperial imperial;
}

class CurrentDataPast24HourTemperatureDepartureMetric
    with JsonConvert<CurrentDataPast24HourTemperatureDepartureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPast24HourTemperatureDepartureImperial
    with JsonConvert<CurrentDataPast24HourTemperatureDepartureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataApparentTemperature
    with JsonConvert<CurrentDataApparentTemperature> {
  @JSONField(name: "Metric")
  CurrentDataApparentTemperatureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataApparentTemperatureImperial imperial;
}

class CurrentDataApparentTemperatureMetric
    with JsonConvert<CurrentDataApparentTemperatureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataApparentTemperatureImperial
    with JsonConvert<CurrentDataApparentTemperatureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWindChillTemperature
    with JsonConvert<CurrentDataWindChillTemperature> {
  @JSONField(name: "Metric")
  CurrentDataWindChillTemperatureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataWindChillTemperatureImperial imperial;
}

class CurrentDataWindChillTemperatureMetric
    with JsonConvert<CurrentDataWindChillTemperatureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWindChillTemperatureImperial
    with JsonConvert<CurrentDataWindChillTemperatureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWetBulbTemperature
    with JsonConvert<CurrentDataWetBulbTemperature> {
  @JSONField(name: "Metric")
  CurrentDataWetBulbTemperatureMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataWetBulbTemperatureImperial imperial;
}

class CurrentDataWetBulbTemperatureMetric
    with JsonConvert<CurrentDataWetBulbTemperatureMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataWetBulbTemperatureImperial
    with JsonConvert<CurrentDataWetBulbTemperatureImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecip1hr with JsonConvert<CurrentDataPrecip1hr> {
  @JSONField(name: "Metric")
  CurrentDataPrecip1hrMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecip1hrImperial imperial;
}

class CurrentDataPrecip1hrMetric with JsonConvert<CurrentDataPrecip1hrMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecip1hrImperial
    with JsonConvert<CurrentDataPrecip1hrImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummary
    with JsonConvert<CurrentDataPrecipitationSummary> {
  @JSONField(name: "Precipitation")
  CurrentDataPrecipitationSummaryPrecipitation precipitation;
  @JSONField(name: "PastHour")
  CurrentDataPrecipitationSummaryPastHour pastHour;
  @JSONField(name: "Past3Hours")
  CurrentDataPrecipitationSummaryPast3Hours past3Hours;
  @JSONField(name: "Past6Hours")
  CurrentDataPrecipitationSummaryPast6Hours past6Hours;
  @JSONField(name: "Past9Hours")
  CurrentDataPrecipitationSummaryPast9Hours past9Hours;
  @JSONField(name: "Past12Hours")
  CurrentDataPrecipitationSummaryPast12Hours past12Hours;
  @JSONField(name: "Past18Hours")
  CurrentDataPrecipitationSummaryPast18Hours past18Hours;
  @JSONField(name: "Past24Hours")
  CurrentDataPrecipitationSummaryPast24Hours past24Hours;
}

class CurrentDataPrecipitationSummaryPrecipitation
    with JsonConvert<CurrentDataPrecipitationSummaryPrecipitation> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPrecipitationMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPrecipitationImperial imperial;
}

class CurrentDataPrecipitationSummaryPrecipitationMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPrecipitationMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPrecipitationImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPrecipitationImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPastHour
    with JsonConvert<CurrentDataPrecipitationSummaryPastHour> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPastHourMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPastHourImperial imperial;
}

class CurrentDataPrecipitationSummaryPastHourMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPastHourMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPastHourImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPastHourImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast3Hours
    with JsonConvert<CurrentDataPrecipitationSummaryPast3Hours> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPast3HoursMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPast3HoursImperial imperial;
}

class CurrentDataPrecipitationSummaryPast3HoursMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPast3HoursMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast3HoursImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPast3HoursImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast6Hours
    with JsonConvert<CurrentDataPrecipitationSummaryPast6Hours> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPast6HoursMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPast6HoursImperial imperial;
}

class CurrentDataPrecipitationSummaryPast6HoursMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPast6HoursMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast6HoursImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPast6HoursImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast9Hours
    with JsonConvert<CurrentDataPrecipitationSummaryPast9Hours> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPast9HoursMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPast9HoursImperial imperial;
}

class CurrentDataPrecipitationSummaryPast9HoursMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPast9HoursMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast9HoursImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPast9HoursImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast12Hours
    with JsonConvert<CurrentDataPrecipitationSummaryPast12Hours> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPast12HoursMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPast12HoursImperial imperial;
}

class CurrentDataPrecipitationSummaryPast12HoursMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPast12HoursMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast12HoursImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPast12HoursImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast18Hours
    with JsonConvert<CurrentDataPrecipitationSummaryPast18Hours> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPast18HoursMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPast18HoursImperial imperial;
}

class CurrentDataPrecipitationSummaryPast18HoursMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPast18HoursMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast18HoursImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPast18HoursImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast24Hours
    with JsonConvert<CurrentDataPrecipitationSummaryPast24Hours> {
  @JSONField(name: "Metric")
  CurrentDataPrecipitationSummaryPast24HoursMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataPrecipitationSummaryPast24HoursImperial imperial;
}

class CurrentDataPrecipitationSummaryPast24HoursMetric
    with JsonConvert<CurrentDataPrecipitationSummaryPast24HoursMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataPrecipitationSummaryPast24HoursImperial
    with JsonConvert<CurrentDataPrecipitationSummaryPast24HoursImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummary
    with JsonConvert<CurrentDataTemperatureSummary> {
  @JSONField(name: "Past6HourRange")
  CurrentDataTemperatureSummaryPast6HourRange past6HourRange;
  @JSONField(name: "Past12HourRange")
  CurrentDataTemperatureSummaryPast12HourRange past12HourRange;
  @JSONField(name: "Past24HourRange")
  CurrentDataTemperatureSummaryPast24HourRange past24HourRange;
}

class CurrentDataTemperatureSummaryPast6HourRange
    with JsonConvert<CurrentDataTemperatureSummaryPast6HourRange> {
  @JSONField(name: "Minimum")
  CurrentDataTemperatureSummaryPast6HourRangeMinimum minimum;
  @JSONField(name: "Maximum")
  CurrentDataTemperatureSummaryPast6HourRangeMaximum maximum;
}

class CurrentDataTemperatureSummaryPast6HourRangeMinimum
    with JsonConvert<CurrentDataTemperatureSummaryPast6HourRangeMinimum> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureSummaryPast6HourRangeMinimumMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureSummaryPast6HourRangeMinimumImperial imperial;
}

class CurrentDataTemperatureSummaryPast6HourRangeMinimumMetric
    with JsonConvert<CurrentDataTemperatureSummaryPast6HourRangeMinimumMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast6HourRangeMinimumImperial
    with
        JsonConvert<
            CurrentDataTemperatureSummaryPast6HourRangeMinimumImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast6HourRangeMaximum
    with JsonConvert<CurrentDataTemperatureSummaryPast6HourRangeMaximum> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureSummaryPast6HourRangeMaximumMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureSummaryPast6HourRangeMaximumImperial imperial;
}

class CurrentDataTemperatureSummaryPast6HourRangeMaximumMetric
    with JsonConvert<CurrentDataTemperatureSummaryPast6HourRangeMaximumMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast6HourRangeMaximumImperial
    with
        JsonConvert<
            CurrentDataTemperatureSummaryPast6HourRangeMaximumImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast12HourRange
    with JsonConvert<CurrentDataTemperatureSummaryPast12HourRange> {
  @JSONField(name: "Minimum")
  CurrentDataTemperatureSummaryPast12HourRangeMinimum minimum;
  @JSONField(name: "Maximum")
  CurrentDataTemperatureSummaryPast12HourRangeMaximum maximum;
}

class CurrentDataTemperatureSummaryPast12HourRangeMinimum
    with JsonConvert<CurrentDataTemperatureSummaryPast12HourRangeMinimum> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureSummaryPast12HourRangeMinimumMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureSummaryPast12HourRangeMinimumImperial imperial;
}

class CurrentDataTemperatureSummaryPast12HourRangeMinimumMetric
    with
        JsonConvert<CurrentDataTemperatureSummaryPast12HourRangeMinimumMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast12HourRangeMinimumImperial
    with
        JsonConvert<
            CurrentDataTemperatureSummaryPast12HourRangeMinimumImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast12HourRangeMaximum
    with JsonConvert<CurrentDataTemperatureSummaryPast12HourRangeMaximum> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureSummaryPast12HourRangeMaximumMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureSummaryPast12HourRangeMaximumImperial imperial;
}

class CurrentDataTemperatureSummaryPast12HourRangeMaximumMetric
    with
        JsonConvert<CurrentDataTemperatureSummaryPast12HourRangeMaximumMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast12HourRangeMaximumImperial
    with
        JsonConvert<
            CurrentDataTemperatureSummaryPast12HourRangeMaximumImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast24HourRange
    with JsonConvert<CurrentDataTemperatureSummaryPast24HourRange> {
  @JSONField(name: "Minimum")
  CurrentDataTemperatureSummaryPast24HourRangeMinimum minimum;
  @JSONField(name: "Maximum")
  CurrentDataTemperatureSummaryPast24HourRangeMaximum maximum;
}

class CurrentDataTemperatureSummaryPast24HourRangeMinimum
    with JsonConvert<CurrentDataTemperatureSummaryPast24HourRangeMinimum> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureSummaryPast24HourRangeMinimumMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureSummaryPast24HourRangeMinimumImperial imperial;
}

class CurrentDataTemperatureSummaryPast24HourRangeMinimumMetric
    with
        JsonConvert<CurrentDataTemperatureSummaryPast24HourRangeMinimumMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast24HourRangeMinimumImperial
    with
        JsonConvert<
            CurrentDataTemperatureSummaryPast24HourRangeMinimumImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast24HourRangeMaximum
    with JsonConvert<CurrentDataTemperatureSummaryPast24HourRangeMaximum> {
  @JSONField(name: "Metric")
  CurrentDataTemperatureSummaryPast24HourRangeMaximumMetric metric;
  @JSONField(name: "Imperial")
  CurrentDataTemperatureSummaryPast24HourRangeMaximumImperial imperial;
}

class CurrentDataTemperatureSummaryPast24HourRangeMaximumMetric
    with
        JsonConvert<CurrentDataTemperatureSummaryPast24HourRangeMaximumMetric> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}

class CurrentDataTemperatureSummaryPast24HourRangeMaximumImperial
    with
        JsonConvert<
            CurrentDataTemperatureSummaryPast24HourRangeMaximumImperial> {
  @JSONField(name: "Value")
  double value;
  @JSONField(name: "Unit")
  String unit;
  @JSONField(name: "UnitType")
  double unitType;
}
