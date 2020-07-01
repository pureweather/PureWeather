import 'package:PureWeather/generated/json/base/json_convert_content.dart';
import 'package:PureWeather/generated/json/base/json_filed.dart';

class AccuHourlyDataEntity with JsonConvert<AccuHourlyDataEntity> {
	@JSONField(name: "DateTime")
	String dateTime;
	@JSONField(name: "EpochDateTime")
	int epochDateTime;
	@JSONField(name: "WeatherIcon")
	double weatherIcon;
	@JSONField(name: "IconPhrase")
	String iconPhrase;
	@JSONField(name: "HasPrecipitation")
	bool hasPrecipitation;
	@JSONField(name: "IsDaylight")
	bool isDaylight;
	@JSONField(name: "Temperature")
	AccuHourlyDataTemperature temperature;
	@JSONField(name: "RealFeelTemperature")
	AccuHourlyDataRealFeelTemperature realFeelTemperature;
	@JSONField(name: "WetBulbTemperature")
	AccuHourlyDataWetBulbTemperature wetBulbTemperature;
	@JSONField(name: "DewPoint")
	AccuHourlyDataDewPoint dewPoint;
	@JSONField(name: "Wind")
	AccuHourlyDataWind wind;
	@JSONField(name: "WindGust")
	AccuHourlyDataWindGust windGust;
	@JSONField(name: "RelativeHumidity")
	double relativeHumidity;
	@JSONField(name: "IndoorRelativeHumidity")
	double indoorRelativeHumidity;
	@JSONField(name: "Visibility")
	AccuHourlyDataVisibility visibility;
	@JSONField(name: "Ceiling")
	AccuHourlyDataCeiling ceiling;
	@JSONField(name: "UVIndex")
	double uVIndex;
	@JSONField(name: "UVIndexText")
	String uVIndexText;
	@JSONField(name: "PrecipitationProbability")
	double precipitationProbability;
	@JSONField(name: "RainProbability")
	double rainProbability;
	@JSONField(name: "SnowProbability")
	double snowProbability;
	@JSONField(name: "IceProbability")
	double iceProbability;
	@JSONField(name: "TotalLiquid")
	AccuHourlyDataTotalLiquid totalLiquid;
	@JSONField(name: "Rain")
	AccuHourlyDataRain rain;
	@JSONField(name: "Snow")
	AccuHourlyDataSnow snow;
	@JSONField(name: "Ice")
	AccuHourlyDataIce ice;
	@JSONField(name: "CloudCover")
	double cloudCover;
	@JSONField(name: "MobileLink")
	String mobileLink;
	@JSONField(name: "Link")
	String link;
}

class AccuHourlyDataTemperature with JsonConvert<AccuHourlyDataTemperature> {
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

class AccuHourlyDataRealFeelTemperature with JsonConvert<AccuHourlyDataRealFeelTemperature> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataWetBulbTemperature with JsonConvert<AccuHourlyDataWetBulbTemperature> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataDewPoint with JsonConvert<AccuHourlyDataDewPoint> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataWind with JsonConvert<AccuHourlyDataWind> {
	@JSONField(name: "Speed")
	AccuHourlyDataWindSpeed speed;
	@JSONField(name: "Direction")
	AccuHourlyDataWindDirection direction;
}

class AccuHourlyDataWindSpeed with JsonConvert<AccuHourlyDataWindSpeed> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataWindDirection with JsonConvert<AccuHourlyDataWindDirection> {
	@JSONField(name: "Degrees")
	double degrees;
	@JSONField(name: "Localized")
	String localized;
	@JSONField(name: "English")
	String english;
}

class AccuHourlyDataWindGust with JsonConvert<AccuHourlyDataWindGust> {
	@JSONField(name: "Speed")
	AccuHourlyDataWindGustSpeed speed;
}

class AccuHourlyDataWindGustSpeed with JsonConvert<AccuHourlyDataWindGustSpeed> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataVisibility with JsonConvert<AccuHourlyDataVisibility> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataCeiling with JsonConvert<AccuHourlyDataCeiling> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataTotalLiquid with JsonConvert<AccuHourlyDataTotalLiquid> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataRain with JsonConvert<AccuHourlyDataRain> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataSnow with JsonConvert<AccuHourlyDataSnow> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}

class AccuHourlyDataIce with JsonConvert<AccuHourlyDataIce> {
	@JSONField(name: "Value")
	double value;
	@JSONField(name: "Unit")
	String unit;
	@JSONField(name: "UnitType")
	double unitType;
}
