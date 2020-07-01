part of 'accu_data_loader_bloc.dart';

@immutable
abstract class AccuDataLoaderState {
  List<AccuHourlyDataEntity> hourlyDataList;
  CurrentDataEntity currentDataEntity;
  int code = -1;
  String areaName = "";

  AccuHourlyDataEntity getFirstEntity() {
    if (code == 0) {
      print("getFirstEntity  ret");
      return hourlyDataList.first;
    }
    print("getFirstEntity  nil");
    return null;
  }
}

class InitialAccuDataLoaderState extends AccuDataLoaderState {}

class AccuDataLoaderStateImpl extends AccuDataLoaderState {
  AccuDataLoaderStateImpl();
}
