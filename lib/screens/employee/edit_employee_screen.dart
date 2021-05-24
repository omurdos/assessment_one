import 'package:assessment_one/constants.dart';
import 'package:assessment_one/providers/employee_provider.dart';
import 'package:assessment_one/widgets/titled_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditEmployeeScreen extends StatefulWidget {
  static const routeName = "EditEmployeeScreen";

  @override
  _EditEmployeeScreenState createState() => _EditEmployeeScreenState();
}

class _EditEmployeeScreenState extends State<EditEmployeeScreen> {
  bool? active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update employee name"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultLayoutPadding, vertical: kItemSpace),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Employee name",
                      prefixIcon: Icon(Icons.account_circle)),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                      labelText: "Department", hintText: "Department"),
                  items: context
                      .watch<EmployeeProvider>()
                      .departments
                      .map((position) {
                    return DropdownMenuItem(
                      child: Text(position),
                      value: position,
                    );
                  }).toList(),
                  onChanged: (value) {
                    //TODO: HANDLE CHANGE ON PROVIDER
                  },
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                      labelText: "Position", hintText: "Position"),
                  items: context
                      .watch<EmployeeProvider>()
                      .positions
                      .map((position) {
                    return DropdownMenuItem(
                      child: Text(position),
                      value: position,
                    );
                  }).toList(),
                  onChanged: (value) {
                    //TODO: HANDLE CHANGE ON PROVIDER
                  },
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: "Categories",
                    hintText: "Categories",
                  ),
                  items: context
                      .watch<EmployeeProvider>()
                      .categories
                      .map((position) {
                    return DropdownMenuItem(
                      child: Text(position),
                      value: position,
                    );
                  }).toList(),
                  onChanged: (value) {
                    //TODO: HANDLE CHANGE ON PROVIDER
                  },
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Personal mail",
                      hintText: "Personal mail"),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Personal number",
                      hintText: "Personal number"),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Office mail",
                      hintText: "Office mail"),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Office number (optional)",
                      hintText: "Office number"),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TitledDivider(title: "Account status"),
                CheckboxListTile(
                  value: active,
                  onChanged: (value) {
                    setState(() {
                      active = value;
                    });
                  },
                  title: Text("Active"),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TitledDivider(title: "Documents"),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Icon(
                          Icons.note,
                          size: 50,
                        ),
                        height: 140,
                        width: 100,
                      ),
                      Container(
                        child: Icon(
                          Icons.note,
                          size: 50,
                        ),
                        height: 140,
                        width: 100,
                      ),
                      Container(
                        child: Icon(
                          Icons.note,
                          size: 50,
                        ),
                        height: 140,
                        width: 100,
                      ),
                      Container(
                        child: Icon(
                          Icons.note,
                          size: 50,
                        ),
                        height: 140,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TitledDivider(title: "Permissions"),
                SizedBox(
                  height: 5.0,
                ),
                Wrap(
                  children: [
                    Chip(
                      label: Text("Permission 1"),
                    ),
                    Chip(
                      label: Text("Permission 1"),
                    ),
                    Chip(
                      label: Text("Permission 1"),
                    ),
                  ],
                ),
                SizedBox(
                  height: kItemSpace * 2,
                ),
                SizedBox(
                  height: 45,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
