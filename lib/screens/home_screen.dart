import 'package:assessment_one/enums/screens.dart';
import 'package:assessment_one/providers/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "homeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            activeIcon: Icon(Icons.group),
            label: 'Employees',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            activeIcon: Icon(Icons.check_circle),
            label: 'Projects',
          ),

        ],
        currentIndex: context.watch<HomeProvider>().selectedScreen.index,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        onTap: context.read<HomeProvider>().onBottomNavTap,
      ),
      body: SafeArea(
        child: Provider.of<HomeProvider>(context)
            .screens[Provider.of<HomeProvider>(context).selectedScreen.index],
      ),
    );
  }
}
