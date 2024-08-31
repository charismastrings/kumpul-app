import 'package:flutter/material.dart';
// import 'package:kumpul_try/pages/contact_page.dart';
import 'package:kumpul_try/pages/meeting_page.dart';
import 'package:kumpul_try/pages/history_page.dart';
import 'package:kumpul_try/pages/setting_page.dart';
import 'package:kumpul_try/pages/testing_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  String getAppBarTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'Meet & Chat';
      case 1:
        return 'History';
      case 2:
        return 'Contact';
      case 3:
        return 'Settings';
      default:
        return '';
    }
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MeetingPage(),
    const HistoryPage(),
    // const ContactPage(),
    const TestingPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getAppBarTitle(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: "Meet & Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
