import 'package:dicoding_cupertino_app/pages/feed_page.dart';
import 'package:dicoding_cupertino_app/pages/search_page.dart';
import 'package:dicoding_cupertino_app/pages/setting_page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const FeedPage();
          case 1:
            return const SearchPage();
          case 2:
            return const SettingPage();
          default:
            return const Center(child: Text('Page not found!'));
        }
      },
    );
    // return CupertinoPageScaffold(
    //   navigationBar:
    //       const CupertinoNavigationBar(middle: Text('Cupertino App')),
    //   child: Center(
    //     child: Text(
    //       'Home Page',
    //       style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
    //     ),
    //   ),
    // );
  }
}
