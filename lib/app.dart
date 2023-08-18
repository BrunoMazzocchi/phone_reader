import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_reader/config/icons/icons.dart';
import 'package:phone_reader/config/routes/routes.dart';
import 'package:phone_reader/config/theme/light_theme.dart';
import 'package:phone_reader/data/datasources/remote/remote_category_data_source.dart';
import 'package:phone_reader/data/repositories/category_repository.dart';
import 'package:phone_reader/features/bookmark/view/view.dart';
import 'package:phone_reader/features/home/bloc/home_bloc.dart';
import 'package:phone_reader/features/home/view/view.dart';
import 'package:phone_reader/features/search/view/view.dart';
import 'package:phone_reader/features/settings/view/view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => CategoryRepository(
            remoteDataSource: CategoryRemoteDataSource(
              client: Dio(),
            ),
          ),
        ),
      ],
      child: const _AppBloc(),
    );
  }
}

class _AppBloc extends StatelessWidget {
  const _AppBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeBloc(
            context.read<CategoryRepository>(),
          )..add(HomeLoadedEvent()),
        ),
      ],
      child: const _AppCore(),
    );
  }
}

class _AppCore extends StatefulWidget {
  const _AppCore({super.key});

  @override
  State<_AppCore> createState() => _AppCoreState();
}

class _AppCoreState extends State<_AppCore> {
  int currentIndex = 0;

  List pages = [
    const HomeView(),
    const SearchView(),
    const BookmarkView(),
    const SettingsView(),
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
