import 'dart:async';

import 'package:PureWeather/accuweather/accu_data_loader/AccuDataType.dart';
import 'package:PureWeather/accuweather/accu_data_loader/accu_data_loader_bloc.dart';
import 'package:PureWeather/home/widget/home_detail_widget.dart';
import 'package:PureWeather/home/widget/info_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final AccuDataLoaderBloc _bloc = AccuDataLoaderBloc();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
      GlobalKey<LiquidPullToRefreshState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AccuDataLoaderEventImpl accuDataLoaderEvent =
        AccuDataLoaderEventImpl(AccuDataType.TYPE_CURRENT);

    _bloc.add(accuDataLoaderEvent);
  }

  Future<void> _handleRefresh() {
    _bloc.add(AccuDataLoaderEventImpl(AccuDataType.TYPE_CURRENT));
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 1), () {
      completer.complete();
    });

    return completer.future.then<void>((_) {
      _scaffoldKey.currentState?.showSnackBar(SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
              label: 'RETRY',
              onPressed: () {
                _refreshIndicatorKey.currentState.show();
              })));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LiquidPullToRefresh(
            key: _refreshIndicatorKey,
            onRefresh: _handleRefresh,
            showChildOpacityTransition: false,
            child: ListView(
              children: [
                BlocBuilder<AccuDataLoaderBloc, AccuDataLoaderState>(
                    bloc: _bloc,
                    builder: (BuildContext context,
                        AccuDataLoaderState counterState) {
                      return Column(
                        children: [
                          HomeDetailWidget(
                            dataEntity: counterState.currentDataEntity,
                            placeName: counterState.areaName,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InfoTabWidget(
                              dataEntity: counterState.currentDataEntity)
                        ],
                      );
                    })
              ],
            )));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
