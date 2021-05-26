import 'package:assessment_one/constants.dart';
import 'package:assessment_one/providers/home_provider.dart';
import 'package:assessment_one/screens/employee/create_employee_screen.dart';
import 'package:assessment_one/screens/employee/edit_employee_screen.dart';
import 'package:assessment_one/screens/employee/view_employee_screen.dart';
import 'package:assessment_one/widgets/employee_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmployeeScreen extends StatefulWidget {
  static const routeName = "EmployeeScreen";

  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Employees"),
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      // ),
      body: Stack(
        children: [
          GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.only(
                left: kDefaultLayoutPadding,
                right: kDefaultLayoutPadding,
                top: 80,
                bottom: 20),
            childAspectRatio: 8.0 / 9.0,
            // TODO: Build a grid of cards (102)
            children: <Widget>[
              EmployeeListItem(
                onTap: () {
                  Navigator.pushNamed(context, ViewEmployeeScreen.routeName);
                },
              ),
              // EmployeeListItem(
              //   onTap: () {
              //     Navigator.pushNamed(context, ViewEmployeeScreen.routeName);
              //   },
              // ),
              // EmployeeListItem(
              //   onTap: () {
              //     Navigator.pushNamed(context, ViewEmployeeScreen.routeName);
              //   },
              // ),
              // EmployeeListItem(
              //   onTap: () {
              //     Navigator.pushNamed(context, ViewEmployeeScreen.routeName);
              //   },
              // ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                    hintText: "Looking for who?",
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60),
                        borderRadius: BorderRadius.circular(5.0)),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
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
