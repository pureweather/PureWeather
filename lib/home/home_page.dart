import 'package:PureWeather/accuweather/accu_data_loader/accu_data_loader_bloc.dart';
import 'package:PureWeather/accuweather/hourly/accu_hourly_data_entity.dart';
import 'package:PureWeather/home/widget/home_detail_widget.dart';
import 'package:PureWeather/home/widget/info_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AccuDataLoaderBloc _bloc = AccuDataLoaderBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AccuDataLoaderEventImpl accuDataLoaderEvent = AccuDataLoaderEventImpl();

    _bloc.add(accuDataLoaderEvent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AccuDataLoaderBloc, AccuDataLoaderState>(
            bloc: _bloc,
            builder: (BuildContext context, AccuDataLoaderState counterState) {
              return Column(
                children: [
                  HomeDetailWidget(
                      counterState.getFirstEntity(), counterState.areaName),
                  InfoTabWidget()
                ],
              );
            }));
  }
}
