import 'package:flutter/material.dart';
import 'screens/challenge_screen.dart';
import 'screens/experience_screen.dart';
import 'screens/events_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      ChallengeScreen(),
      ExperienceScreen(),
      EventsScreen(),
      SettingsScreen(),
      ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flag, color: Colors.black),
            label: 'Challenge',
            activeIcon: Icon(Icons.flag, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.black),
            label: 'Experience',
            activeIcon: Icon(Icons.explore, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, color: Colors.black),
            label: 'Events',
            activeIcon: Icon(Icons.event, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
            activeIcon: Icon(Icons.settings, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
            activeIcon: Icon(Icons.person, color: Colors.black),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
