import 'package:assessment_one/constants.dart';
import 'package:assessment_one/screens/employee/edit_employee_screen.dart';
import 'package:assessment_one/screens/employee/employee_documents.dart';
import 'package:assessment_one/screens/employee/employee_permissions_screen.dart';
import 'package:assessment_one/widgets/boxed_button.dart';
import 'package:flutter/material.dart';

class ViewEmployeeScreen extends StatefulWidget {
  static const routeName = "viewEmployeeScreen";

  @override
  _ViewEmployeeScreenState createState() => _ViewEmployeeScreenState();
}

class _ViewEmployeeScreenState extends State<ViewEmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 350,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, EditEmployeeScreen.routeName);
                  },
                  icon: Icon(Icons.edit))
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "person",
                child: Image.asset(
                  "assets/images/person.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(kDefaultLayoutPadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Omar Murdos",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: kItemSpace,
                            ),
                            Text(
                              "Developer",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(color: Colors.black54),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.green.shade300,
                      ),
                      SizedBox(
                        width: kItemSpace,
                      ),
                      Text("Active")
                    ],
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultLayoutPadding),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Personal Contacts",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        height: kItemSpace,
                      ),
                      contactItem("Email", "someone@outlook.com", Icons.email),
                      contactItem("Phone", "1234567891", Icons.phone),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultLayoutPadding),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Office Contacts",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        height: kItemSpace,
                      ),
                      contactItem("Email", "office@mail.com", Icons.email),
                      contactItem("Phone", "1234567891", Icons.phone),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultLayoutPadding),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Documents & Permissions",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        height: kItemSpace * 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: BoxedButton(
                            title: "Documents",
                            iconData: Icons.folder,
                            color: Colors.amber,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, EmployeeDocumentsScreen.routeName);
                            },
                          )),
                          SizedBox(
                            width: kItemSpace,
                          ),
                          Expanded(
                              child: BoxedButton(
                            title: "Permissions",
                            iconData: Icons.vpn_key,
                            color: Colors.red,
                                onTap: (){
                              Navigator.pushNamed(context, EmployeePermissionsScreen.routeName);
                                },
                          )),
                        ],
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  ),
                ),
              ],
            );
          }, childCount: 1)),
        ],
      ),
    );
  }

  contactItem(String title, String subTitle, IconData? iconData) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(kItemSpace),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor.withOpacity(0.3)),
        child: Icon(
          iconData,
          color: Theme.of(context).primaryColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: Theme.of(context).primaryColor),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  showFiles() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return EmployeeDocumentsScreen();
        });
  }
}
