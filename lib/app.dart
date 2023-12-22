import 'package:fantasy_admin_internal/app/screens/dashboard_screens/matches_screen.dart';
import 'package:fantasy_admin_internal/app/screens/dashboard_screens/series_screen.dart';
import 'package:fantasy_admin_internal/app/screens/dashboard_screens/users_screen.dart';
import 'package:fantasy_admin_internal/app/theme/app_assets.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  static const String route = '/DashBoard';

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    const UsersScreen(),
    const MatchesScreen(),
    const SeriesScreen(),
  ];

  NavigationRailDestination getNavigationRailIcon(
    String unselectedIconPath,
    String selectedIconPath,
    String name,
  ) {
    return NavigationRailDestination(
      selectedIcon: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              color: Colors.white70,
              selectedIconPath,
              scale: 2.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
      icon: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              color: Colors.white38,
              unselectedIconPath,
              scale: 2.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white38,
              ),
            ),
          ),
        ],
      ),
      label: const SizedBox.shrink(),
    );

    //  Image.asset(
    //   color: Colors.black,
    //   unselectedIconPath,
    //   scale: 2.8,
    // ),
    // Image.asset(
    //   color: Colors.black,
    //   selectedIconPath,
    //   scale: 2.8,
    // ),
    // label: Padding(
    //   padding: const EdgeInsets.only(top: 6),
    //   child: Text(
    //     name,
    //     textAlign: TextAlign.center,
    //   ),
    // ),
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 180,
            child: NavigationRail(
              useIndicator: false,
              selectedIndex: _selectedIndex,
              backgroundColor: const Color(0xFF3F4B62),
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (int index) {
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
              leading: Container(
                color: const Color(0xFF323C52),
                child: Image.asset(
                  AppLogos.logo,
                  height: 50,
                  width: double.maxFinite,
                ),
              ),
              destinations: <NavigationRailDestination>[
                getNavigationRailIcon(
                  AppIcons.user,
                  AppIcons.userFilled,
                  'Users',
                ),
                getNavigationRailIcon(
                  AppIcons.user,
                  AppIcons.userFilled,
                  'Matces',
                ),
                getNavigationRailIcon(
                  AppIcons.user,
                  AppIcons.userFilled,
                  'Series',
                ),
              ],
            ),
          ),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
