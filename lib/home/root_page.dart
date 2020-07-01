import 'package:PureWeather/generated/l10n.dart';
import 'package:PureWeather/home/forecast_page.dart';
import 'package:PureWeather/home/home_page.dart';
import 'package:PureWeather/home/search_page.dart';
import 'package:PureWeather/home/setting_page.dart';
import 'package:PureWeather/res.dart';
import 'package:PureWeather/widget/s_v_g_icon.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  RootPage({Key key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text(S.current.appName),
        // Set the background color of the App Bar
        backgroundColor: Colors.blue,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          HomePage(),
          ForecastPage(),
          SearchPage(),
          SettingPage()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              text: S.current.home,
              // set icon to the tab
              icon: SVGIcon(Res.ic_home),
            ),
            Tab(
              text: S.current.forecast,
              //  icon: ImageIcon(Image(image: ImageProvider(),)),
              icon: SVGIcon(Res.ic_search),
            ),
            Tab(
              text: S.current.search,
              icon: SVGIcon(Res.ic_search),
            ),
            Tab(
              text: S.current.settings,
              icon: SVGIcon(Res.ic_settings),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
