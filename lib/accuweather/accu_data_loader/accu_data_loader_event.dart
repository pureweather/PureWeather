part of 'accu_data_loader_bloc.dart';

@immutable
abstract class AccuDataLoaderEvent {
  String areaId = "2106681";
  String areaName = "Mountview";
}

class AccuDataLoaderEventImpl extends AccuDataLoaderEvent {}
