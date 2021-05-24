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
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                child: Image.asset("assets/images/avatar.png"),
              ),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            ListTile(
              title: Text("Employees"),
              selected:  context.read<HomeProvider>().selectedScreen == Screens.EMPLOYEE,
              onTap: () {
                Navigator.pop(context);
                context.read<HomeProvider>().selectedScreen = Screens.EMPLOYEE;
              },
            ),
            Divider(),
            ListTile(
              title: Text("Projects"),
              selected:  context.read<HomeProvider>().selectedScreen == Screens.PROJECT,
              onTap: () {
                Navigator.pop(context);
                context.read<HomeProvider>().selectedScreen = Screens.PROJECT;
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Provider.of<HomeProvider>(context)
            .screens[Provider.of<HomeProvider>(context).selectedScreen.index],
      ),
    );
  }
}
