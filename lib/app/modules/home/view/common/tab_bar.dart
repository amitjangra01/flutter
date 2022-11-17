import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../activities/view/activities_view.dart';
import '../../../flights/flights_container_view.dart';
import '../../../stays/view/stays_container_view.dart';
import 'container.dart';

class MobileTabBarView extends StatelessWidget {
  const MobileTabBarView({super.key});

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
          SizedBox(height: size.height * 0.03),
          SizedBox(
            height: size.height * 0.40,
            width: size.width * 0.8,
            child: TabBarView(
              children: [
                mobileViewContainer(
                  context,
                  child: const StaysContainerView(),
                ),
                mobileViewContainer(
                  context,
                  child: const FlightsContainerView(),
                ),
                mobileViewContainer(
                  context,
                  child: const ActivitiesContainerView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
