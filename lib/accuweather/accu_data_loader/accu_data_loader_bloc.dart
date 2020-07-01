import 'dart:async';
import 'dart:convert';
import 'package:PureWeather/accuweather/AccuweatherConfig.dart';
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
      String areaId = event.areaId;
      // Await the http get response, then decode the json-formatted response.

      var response = await http.get(
          sprintf(AccuweatherConfig.HOURLY_12_URL, [areaId, "key is here"]));
      if (response.statusCode == 200) {
        //JsonConvert<List<AccuHourlyDataEntity>> convert=JsonConvert();
        List jsonData = json.decode(response.body);
        List<AccuHourlyDataEntity> jsonResponse =
            JsonConvert.fromJsonAsT(jsonData);

        // var jsonResponse = convert.fromJson(jsonData.first);
        // var itemCount = jsonResponse['totalItems'];
        AccuDataLoaderStateImpl stateImpl = AccuDataLoaderStateImpl();
        stateImpl.hourlyDataList = jsonResponse;
        stateImpl.areaName = event.areaName;
        stateImpl.code = 0;
        //print('Number of books about http: ');
        yield* _mapIncrementEventToState(stateImpl);
      } else {
        AccuDataLoaderStateImpl stateImpl = AccuDataLoaderStateImpl();

        stateImpl.code = 1;
        print('Request failed with status: ${response.statusCode}.');
        yield* _mapIncrementEventToState(stateImpl);
      }
    }
  }

  Stream<AccuDataLoaderStateImpl> _mapIncrementEventToState(
      AccuDataLoaderStateImpl accuDataLoaderStateImpl) async* {
    yield accuDataLoaderStateImpl;
  }
}
