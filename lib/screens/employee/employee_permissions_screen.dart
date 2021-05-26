import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class EmployeePermissionsScreen extends StatefulWidget {
  static const routeName = "employeePermissionsScreen";

  @override
  _EmployeePermissionsScreenState createState() =>
      _EmployeePermissionsScreenState();
}

class _EmployeePermissionsScreenState extends State<EmployeePermissionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permissions"),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.all(kDefaultLayoutPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Group permissions",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: kItemSpace,
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Permission"),
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Permission"),
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Permission"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    margin: EdgeInsets.only(top: kItemSpace * 2),
                    padding: EdgeInsets.all(kDefaultLayoutPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "User permissions",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: kItemSpace,
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Permission"),
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Permission"),
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Permission"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
