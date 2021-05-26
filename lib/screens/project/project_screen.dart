import 'package:assessment_one/constants.dart';
import 'package:assessment_one/screens/project/create_project_screen.dart';
import 'package:assessment_one/screens/project/view_project_screen.dart';
import 'package:assessment_one/widgets/project_list_item.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  static const routeName = "projectScreen";

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultLayoutPadding, vertical: 10),
        children: [
          ProjectListItem(
            onTap: () {
              Navigator.pushNamed(context, ViewProjectScreen.routeName);
            },
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, CreateProjectScreen.routeName);
        },
      ),
    );
  }
}
