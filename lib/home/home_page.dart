import 'package:PureWeather/home/widget/home_detail_widget.dart';
import 'package:PureWeather/home/widget/info_tab_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [HomeDetailWidget(), InfoTabWidget()],
    );
  }
}
