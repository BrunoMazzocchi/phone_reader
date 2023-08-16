import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_reader/config/icons/icons.dart';
import 'package:phone_reader/config/routes/routes.dart';
import 'package:phone_reader/config/theme/light_theme.dart';
import 'package:phone_reader/features/home/view/view.dart';
import 'package:phone_reader/features/search/view/view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;

  List pages = [
    const HomeView(),
    const SearchView(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget title = SizedBox(
      width: 99,
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/newsLogo1.svg",
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "News 24",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
    BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.bottomNavBarHomeActive),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border_outlined),
          label: "Bookmarks",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "Profile",
        ),
      ],
      currentIndex: currentIndex,
      iconSize: 24,
      selectedItemColor: LightTheme.primaryColor,
      unselectedItemColor: LightTheme.secondaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
    return MaterialApp(
      title: 'Phone Reader',
      theme: LightTheme().getLightTheme(),
      routes: appRoutes,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: title,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.notifications_outlined,
                color: LightTheme.primaryColor,
                size: 24,
              ),
            )
          ],
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: pages[currentIndex],
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}