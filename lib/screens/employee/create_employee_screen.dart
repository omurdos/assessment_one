import 'package:assessment_one/constants.dart';
import 'package:assessment_one/providers/employee_provider.dart';
import 'package:assessment_one/widgets/titled_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateEmployeeScreen extends StatefulWidget {
  static const routeName = "CreateEmployeeScreen";

  @override
  _CreateEmployeeScreenState createState() => _CreateEmployeeScreenState();
}

class _CreateEmployeeScreenState extends State<CreateEmployeeScreen> {
  bool? active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New employee"),
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
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Add"),
                ),
                SizedBox(
                  height: kItemSpace,
                ),
                TitledDivider(title: "Permissions"),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Add"),
                ),
                SizedBox(
                  height: kItemSpace * 2,
                ),
                SizedBox(
                  height: 45,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create",
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
