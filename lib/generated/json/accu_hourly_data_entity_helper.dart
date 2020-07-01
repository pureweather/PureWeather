import 'package:PureWeather/accuweather/hourly/accu_hourly_data_entity.dart';

accuHourlyDataEntityFromJson(AccuHourlyDataEntity data, Map<String, dynamic> json) {
	if (json['DateTime'] != null) {
		data.dateTime = json['DateTime']?.toString();
	}
	if (json['EpochDateTime'] != null) {
		data.epochDateTime = json['EpochDateTime']?.toInt();
	}
	if (json['WeatherIcon'] != null) {
		data.weatherIcon = json['WeatherIcon']?.toDouble();
	}
	if (json['IconPhrase'] != null) {
		data.iconPhrase = json['IconPhrase']?.toString();
	}
	if (json['HasPrecipitation'] != null) {
		data.hasPrecipitation = json['HasPrecipitation'];
	}
	if (json['IsDaylight'] != null) {
		data.isDaylight = json['IsDaylight'];
	}
	if (json['Temperature'] != null) {
		data.temperature = new AccuHourlyDataTemperature().fromJson(json['Temperature']);
	}
	if (json['RealFeelTemperature'] != null) {
		data.realFeelTemperature = new AccuHourlyDataRealFeelTemperature().fromJson(json['RealFeelTemperature']);
	}
	if (json['WetBulbTemperature'] != null) {
		data.wetBulbTemperature = new AccuHourlyDataWetBulbTemperature().fromJson(json['WetBulbTemperature']);
	}
	if (json['DewPoint'] != null) {
		data.dewPoint = new AccuHourlyDataDewPoint().fromJson(json['DewPoint']);
	}
	if (json['Wind'] != null) {
		data.wind = new AccuHourlyDataWind().fromJson(json['Wind']);
	}
	if (json['WindGust'] != null) {
		data.windGust = new AccuHourlyDataWindGust().fromJson(json['WindGust']);
	}
	if (json['RelativeHumidity'] != null) {
		data.relativeHumidity = json['RelativeHumidity']?.toDouble();
	}
	if (json['IndoorRelativeHumidity'] != null) {
		data.indoorRelativeHumidity = json['IndoorRelativeHumidity']?.toDouble();
	}
	if (json['Visibility'] != null) {
		data.visibility = new AccuHourlyDataVisibility().fromJson(json['Visibility']);
	}
	if (json['Ceiling'] != null) {
		data.ceiling = new AccuHourlyDataCeiling().fromJson(json['Ceiling']);
	}
	if (json['UVIndex'] != null) {
		data.uVIndex = json['UVIndex']?.toDouble();
	}
	if (json['UVIndexText'] != null) {
		data.uVIndexText = json['UVIndexText']?.toString();
	}
	if (json['PrecipitationProbability'] != null) {
		data.precipitationProbability = json['PrecipitationProbability']?.toDouble();
	}
	if (json['RainProbability'] != null) {
		data.rainProbability = json['RainProbability']?.toDouble();
	}
	if (json['SnowProbability'] != null) {
		data.snowProbability = json['SnowProbability']?.toDouble();
	}
	if (json['IceProbability'] != null) {
		data.iceProbability = json['IceProbability']?.toDouble();
	}
	if (json['TotalLiquid'] != null) {
		data.totalLiquid = new AccuHourlyDataTotalLiquid().fromJson(json['TotalLiquid']);
	}
	if (json['Rain'] != null) {
		data.rain = new AccuHourlyDataRain().fromJson(json['Rain']);
	}
	if (json['Snow'] != null) {
		data.snow = new AccuHourlyDataSnow().fromJson(json['Snow']);
	}
	if (json['Ice'] != null) {
		data.ice = new AccuHourlyDataIce().fromJson(json['Ice']);
	}
	if (json['CloudCover'] != null) {
		data.cloudCover = json['CloudCover']?.toDouble();
	}
	if (json['MobileLink'] != null) {
		data.mobileLink = json['MobileLink']?.toString();
	}
	if (json['Link'] != null) {
		data.link = json['Link']?.toString();
	}
	return data;
}

Map<String, dynamic> accuHourlyDataEntityToJson(AccuHourlyDataEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['DateTime'] = entity.dateTime;
	data['EpochDateTime'] = entity.epochDateTime;
	data['WeatherIcon'] = entity.weatherIcon;
	data['IconPhrase'] = entity.iconPhrase;
	data['HasPrecipitation'] = entity.hasPrecipitation;
	data['IsDaylight'] = entity.isDaylight;
	if (entity.temperature != null) {
		data['Temperature'] = entity.temperature.toJson();
	}
	if (entity.realFeelTemperature != null) {
		data['RealFeelTemperature'] = entity.realFeelTemperature.toJson();
	}
	if (entity.wetBulbTemperature != null) {
		data['WetBulbTemperature'] = entity.wetBulbTemperature.toJson();
	}
	if (entity.dewPoint != null) {
		data['DewPoint'] = entity.dewPoint.toJson();
	}
	if (entity.wind != null) {
		data['Wind'] = entity.wind.toJson();
	}
	if (entity.windGust != null) {
		data['WindGust'] = entity.windGust.toJson();
	}
	data['RelativeHumidity'] = entity.relativeHumidity;
	data['IndoorRelativeHumidity'] = entity.indoorRelativeHumidity;
	if (entity.visibility != null) {
		data['Visibility'] = entity.visibility.toJson();
	}
	if (entity.ceiling != null) {
		data['Ceiling'] = entity.ceiling.toJson();
	}
	data['UVIndex'] = entity.uVIndex;
	data['UVIndexText'] = entity.uVIndexText;
	data['PrecipitationProbability'] = entity.precipitationProbability;
	data['RainProbability'] = entity.rainProbability;
	data['SnowProbability'] = entity.snowProbability;
	data['IceProbability'] = entity.iceProbability;
	if (entity.totalLiquid != null) {
		data['TotalLiquid'] = entity.totalLiquid.toJson();
	}
	if (entity.rain != null) {
		data['Rain'] = entity.rain.toJson();
	}
	if (entity.snow != null) {
		data['Snow'] = entity.snow.toJson();
	}
	if (entity.ice != null) {
		data['Ice'] = entity.ice.toJson();
	}
	data['CloudCover'] = entity.cloudCover;
	data['MobileLink'] = entity.mobileLink;
	data['Link'] = entity.link;
	return data;
}

accuHourlyDataTemperatureFromJson(AccuHourlyDataTemperature data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataTemperatureToJson(AccuHourlyDataTemperature entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataRealFeelTemperatureFromJson(AccuHourlyDataRealFeelTemperature data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataRealFeelTemperatureToJson(AccuHourlyDataRealFeelTemperature entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataWetBulbTemperatureFromJson(AccuHourlyDataWetBulbTemperature data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataWetBulbTemperatureToJson(AccuHourlyDataWetBulbTemperature entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataDewPointFromJson(AccuHourlyDataDewPoint data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataDewPointToJson(AccuHourlyDataDewPoint entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataWindFromJson(AccuHourlyDataWind data, Map<String, dynamic> json) {
	if (json['Speed'] != null) {
		data.speed = new AccuHourlyDataWindSpeed().fromJson(json['Speed']);
	}
	if (json['Direction'] != null) {
		data.direction = new AccuHourlyDataWindDirection().fromJson(json['Direction']);
	}
	return data;
}

Map<String, dynamic> accuHourlyDataWindToJson(AccuHourlyDataWind entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.speed != null) {
		data['Speed'] = entity.speed.toJson();
	}
	if (entity.direction != null) {
		data['Direction'] = entity.direction.toJson();
	}
	return data;
}

accuHourlyDataWindSpeedFromJson(AccuHourlyDataWindSpeed data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataWindSpeedToJson(AccuHourlyDataWindSpeed entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataWindDirectionFromJson(AccuHourlyDataWindDirection data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataWindDirectionToJson(AccuHourlyDataWindDirection entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Degrees'] = entity.degrees;
	data['Localized'] = entity.localized;
	data['English'] = entity.english;
	return data;
}

accuHourlyDataWindGustFromJson(AccuHourlyDataWindGust data, Map<String, dynamic> json) {
	if (json['Speed'] != null) {
		data.speed = new AccuHourlyDataWindGustSpeed().fromJson(json['Speed']);
	}
	return data;
}

Map<String, dynamic> accuHourlyDataWindGustToJson(AccuHourlyDataWindGust entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.speed != null) {
		data['Speed'] = entity.speed.toJson();
	}
	return data;
}

accuHourlyDataWindGustSpeedFromJson(AccuHourlyDataWindGustSpeed data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataWindGustSpeedToJson(AccuHourlyDataWindGustSpeed entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataVisibilityFromJson(AccuHourlyDataVisibility data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataVisibilityToJson(AccuHourlyDataVisibility entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataCeilingFromJson(AccuHourlyDataCeiling data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataCeilingToJson(AccuHourlyDataCeiling entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataTotalLiquidFromJson(AccuHourlyDataTotalLiquid data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataTotalLiquidToJson(AccuHourlyDataTotalLiquid entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataRainFromJson(AccuHourlyDataRain data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataRainToJson(AccuHourlyDataRain entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataSnowFromJson(AccuHourlyDataSnow data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataSnowToJson(AccuHourlyDataSnow entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}

accuHourlyDataIceFromJson(AccuHourlyDataIce data, Map<String, dynamic> json) {
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

Map<String, dynamic> accuHourlyDataIceToJson(AccuHourlyDataIce entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Value'] = entity.value;
	data['Unit'] = entity.unit;
	data['UnitType'] = entity.unitType;
	return data;
}