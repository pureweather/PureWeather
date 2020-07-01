import 'dart:async';
import 'dart:convert';
import 'package:PureWeather/accuweather/AccuweatherConfig.dart';
import 'package:PureWeather/accuweather/accu_data_loader/AccuDataType.dart';
import 'package:PureWeather/accuweather/current/current_data_entity.dart';
import 'package:PureWeather/accuweather/hourly/accu_hourly_data_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:PureWeather/generated/json/base/json_convert_content.dart';
import 'package:http/http.dart' as http;
import 'package:sprintf/sprintf.dart';

part 'accu_data_loader_event.dart';

part 'accu_data_loader_state.dart';

class AccuDataLoaderBloc
    extends Bloc<AccuDataLoaderEvent, AccuDataLoaderState> {
  @override
  AccuDataLoaderState get initialState => InitialAccuDataLoaderState();

  @override
  Stream<AccuDataLoaderState> mapEventToState(
      AccuDataLoaderEvent event) async* {
    // TODO: Add your event logic
    if (event is AccuDataLoaderEventImpl) {
      AccuDataLoaderStateImpl stateImpl = AccuDataLoaderStateImpl();
      String areaId = event.areaId;
      if (event.type == AccuDataType.TYPE_DAY_HALF) {
        // Await the http get response, then decode the json-formatted response.

        var response = await http.get(sprintf(AccuweatherConfig.HOURLY_12_URL,
            [areaId, AccuweatherConfig.TEST_KEY]));
        if (response.statusCode == 200) {
          //JsonConvert<List<AccuHourlyDataEntity>> convert=JsonConvert();
          List jsonData = json.decode(response.body);
          List<AccuHourlyDataEntity> jsonResponse =
              JsonConvert.fromJsonAsT(jsonData);

          stateImpl.hourlyDataList = jsonResponse;
          stateImpl.areaName = event.areaName;
          stateImpl.code = 0;
        } else {
          print('Request failed with status: ${response.statusCode}.');
        }
      } else if (event.type == AccuDataType.TYPE_CURRENT) {
        var response = await http.get(sprintf(AccuweatherConfig.CURRENT_URL,
            [areaId, AccuweatherConfig.TEST_KEY]));
        if (response.statusCode == 200) {
          List jsonData = json.decode(response.body);
          List<CurrentDataEntity> jsonResponse =
              JsonConvert.fromJsonAsT(jsonData);

          stateImpl.currentDataEntity = jsonResponse.first;
          stateImpl.areaName = event.areaName;
          stateImpl.code = 0;
          print('Request loaded.');
        } else {
          print('Request failed with status: ${response.statusCode}.');
        }

        //print('Number of books about http: ');
        yield* _mapIncrementEventToState(stateImpl);
      } else {
        AccuDataLoaderStateImpl stateImpl = AccuDataLoaderStateImpl();

        stateImpl.code = 1;

        yield* _mapIncrementEventToState(stateImpl);
      }
    }
  }

  Stream<AccuDataLoaderStateImpl> _mapIncrementEventToState(
      AccuDataLoaderStateImpl accuDataLoaderStateImpl) async* {
    yield accuDataLoaderStateImpl;
  }
}
