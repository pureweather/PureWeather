import 'package:flutter/material.dart';

class ForecastPage extends StatefulWidget {
  ForecastPage({Key key}) : super(key: key);

  @override
  _ForecastPageState createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  bool get wantKeepAlive => true;
}
