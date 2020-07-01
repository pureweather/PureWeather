import 'package:PureWeather/generated/l10n.dart';
import 'package:PureWeather/home/forecast_page.dart';
import 'package:PureWeather/home/home_page.dart';
import 'package:PureWeather/home/search_page.dart';
import 'package:PureWeather/home/setting_page.dart';
import 'package:PureWeather/splash/SplashScreen.dart';
import 'package:PureWeather/widget/s_v_g_icon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              icon: SVGIcon("images/svg/ic_home.xml"),
            ),
            Tab(
              text: S.current.forecast,
              //  icon: ImageIcon(Image(image: ImageProvider(),)),
              icon: SVGIcon("images/svg/ic_search.xml"),
            ),
            Tab(
              text: S.current.search,
              icon: SVGIcon("images/svg/ic_search.xml"),
            ),
            Tab(
              text: S.current.settings,
              icon: SVGIcon("images/svg/ic_settings.xml"),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
