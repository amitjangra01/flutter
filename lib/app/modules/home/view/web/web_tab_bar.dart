import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'activities_web_container.dart';
import 'flights_web_container_view.dart';
import 'stays_web_container_view.dart';
import 'web_view_container.dart';

class WebTabBarView extends StatelessWidget {
  const WebTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(),
            child: SizedBox(
              height: size.height * 0.2,
              width: size.width * 0.3,
              child: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(FontAwesomeIcons.hotel),
                    text: 'Stays',
                  ),
                  Tab(
                    icon: Icon(Icons.airplanemode_active),
                    text: 'Flights',
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.earth),
                    text: 'Activities',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SizedBox(
            height: size.height * 0.25,
            width: size.width * 0.8,
            child: TabBarView(
              children: [
                webViewContainer(
                  context,
                  child: const StaysWebContainerView(),
                ),
                webViewContainer(
                  context,
                  child: const FlightsWebContainerView(),
                ),
                webViewContainer(
                  context,
                  child: const ActivitiesWebContainerView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
