import 'package:assessment_one/constants.dart';
import 'package:assessment_one/screens/employee/create_employee_screen.dart';
import 'package:assessment_one/screens/employee/edit_employee_screen.dart';
import 'package:flutter/material.dart';

class EmployeeScreen extends StatefulWidget {
  static const routeName = "EmployeeScreen";

  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Search...",
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset("assets/images/avatar.png"),
            ),
            title: Text("Employee"),
            subtitle: Text("employee@company.com"),
            onTap: () {
              Navigator.pushNamed(context, EditEmployeeScreen.routeName);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, CreateEmployeeScreen.routeName);
        },
      ),
    );
  }
}
