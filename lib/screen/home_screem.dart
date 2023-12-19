import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:instagram_bottom_navigation_bar/screen/add_screen.dart';
// import 'package:instagram_bottom_navigation_bar/screen/profile_screen.dart';
// import 'package:instagram_bottom_navigation_bar/screen/search_screen.dart';
// import 'package:instagram_bottom_navigation_bar/screen/video_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  final List<Widget> _pages = [
    // HomeScreen(),
    // SearchScreen(),
    // AddScreen(),
    // VideoScreen(),
    // ProfileScreen(),
    // Container
    //   color: Colors.red,
    // ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.deepPurpleAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('assets/svg/Instagram.svg'),
        actions: const [
          Icon(Icons.notification_add),
          Icon(Icons.send_outlined),
        ],
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: buttonNavigationbar(),
    );
  }

  BottomNavigationBar buttonNavigationbar() {
    return BottomNavigationBar(
      currentIndex: _selectIndex,
      onTap: (index) {
        setState(() {
          _selectIndex = index;
        });
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_selectIndex == 0
              ? 'assets/svg/home-bold.svg'
              : 'assets/svg/home-outline.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_selectIndex == 1
              ? 'assets/svg/search-bold.svg'
              : 'assets/svg/search-outline.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_selectIndex == 2
              ? 'assets/svg/add-square-bold.svg'
              : 'assets/svg/add-square-outline.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_selectIndex == 3
              ? 'assets/svg/video-play-bold.svg'
              : 'assets/svg/video-play-outline.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
                shape: BoxShape.circle),
          ),
          label: '',
        ),
      ],
    );
  }
}
