import 'package:feed_screen/feed_screen.dart';
import 'package:feed_screen/market_screen.dart';
import 'package:feed_screen/messages.dart';
import 'package:feed_screen/profile_screen.dart';
import 'package:feed_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeedScreen(),
    SearchScreen(),
    MarketScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _loadLastTab();
  }

  _loadLastTab() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int lastIndex = prefs.getInt('lastTab') ?? 0;
    setState(() {
      _selectedIndex = lastIndex;
    });
  }

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('lastTab', index);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.search),
              icon: Icon(Icons.search_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.store),
              icon: Icon(
                Icons.store,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.chat),
              icon: Icon(Icons.chat),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 93, 176, 117),
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
