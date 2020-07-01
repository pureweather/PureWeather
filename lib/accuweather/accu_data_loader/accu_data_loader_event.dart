part of 'accu_data_loader_bloc.dart';

@immutable
abstract class AccuDataLoaderEvent {
  String areaId = "2106681";

  AccuDataLoaderEvent(this.type);

  String areaName = "Mountview";
  AccuDataType type;
}

class AccuDataLoaderEventImpl extends AccuDataLoaderEvent {
  AccuDataLoaderEventImpl(AccuDataType type) : super(type);
}
