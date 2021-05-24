import 'package:assessment_one/screens/project/create_project_screen.dart';
import 'package:assessment_one/screens/project/edit_project_screen.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  static const routeName = "projectScreen";

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Project"),
            onTap: (){
              Navigator.pushNamed(context, EditProjectScreen.routeName);

            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.pushNamed(context, CreateProjectScreen.routeName);
        },
      ),
    );
  }
}
