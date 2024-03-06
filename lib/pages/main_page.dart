import 'package:flutter/material.dart';
import 'package:user_interface/assets/colors.dart';
import 'package:user_interface/components/map.dart';
import 'package:user_interface/components/order.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: tertiaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text('Map'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _getBodyWidget(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: tertiaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: 'Xarita',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.online_prediction_rounded,
            ),
            label: 'Zakaz',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getBodyWidget(int index) {
    switch (index) {
      case 0:
        return const MapPage();
      case 1:
        return const OrderPage();
      default:
        return Container();
    }
  }
}
