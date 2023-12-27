import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_bottom_navigation_bar/screen/post_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  final List<Widget> _pages = [
    // Container(
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //         image: AssetImage('assets/post/.jpg'), fit: BoxFit.cover),
    //   ),
    //   // color: Colors.red,
    // ),
    const PostScreen(),

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
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: _pages[_selectIndex],
      bottomNavigationBar: buttonNavigationbar(),
    );
  }

//app bar
  AppBar appBar(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        child: Row(
          children: [
            GestureDetector(
              child: SvgPicture.asset('assets/svg/logo.svg'),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/downarrow.png',
                height: 10,
                width: 10,
              ),
            ),
          ],
        ),
        onTap: () {
          _showPopMenu(context);
        },
      ),
      actions: [
        SvgPicture.asset('assets/svg/notification.svg'),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          'assets/svg/message.svg',
          height: 23,
          width: 23,
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  void _showPopMenu(BuildContext context) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromPoints(
          overlay.localToGlobal(Offset.zero),
          overlay.localToGlobal(overlay.size.bottomRight(Offset.zero)),
        ),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Following',
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.person_rounded),
            ],
          ),
          onTap: () {
            // Handle item 1 tap
          },
        ),
        PopupMenuItem(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Favorites', style: TextStyle(fontSize: 16)),
              Icon(Icons.favorite),
            ],
          ),
          onTap: () {
            // Handle item 2 tap
          },
        ),
        // Add more items as needed
      ],
    );
  }

//buttom navbar
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
                  image: AssetImage('assets/images/profile.jpg'),
                ),
                shape: BoxShape.circle),
          ),
          label: '',
        ),
      ],
    );
  }
}
