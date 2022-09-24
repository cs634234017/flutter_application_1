import 'package:flutter/material.dart';
import 'column_screen.dart';
import 'row_screen.dart';
//import 'profile_screen.dart';
//import 'expanded_screen.dart';
//import 'flexible_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ColumnScreen(),
    RowScreen(),
    ColumnScreen(),
    ColumnScreen(),
    ColumnScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layout")),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.bike_scooter),
                backgroundColor: Colors.lightBlueAccent,
                label: "Column"),
            BottomNavigationBarItem(
              icon: Icon(Icons.motorcycle),
              backgroundColor: Color.fromARGB(255, 44, 181, 245),
              label: "Row",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental),
              backgroundColor: Colors.lightBlue,
              label: "Expanded",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              backgroundColor: Colors.lightBlue,
              label: "Flexible",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                //size: 50,
                //color: Colors.yellowAccent,
              ),
              backgroundColor: Colors.lightBlue,
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          elevation: 5),
    );
  }
}
