import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class EmployeeDocumentsScreen extends StatefulWidget {
  static const routeName = "EmployeeDocuments";

  @override
  _EmployeeDocumentsScreenState createState() => _EmployeeDocumentsScreenState();
}

class _EmployeeDocumentsScreenState extends State<EmployeeDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Omar's files"),),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.symmetric(horizontal: kDefaultLayoutPadding),
          childAspectRatio: 8.0 / 8.0,
          children: [
            InkWell(
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(kItemSpace),
                  child: Center(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Icon(Icons.insert_drive_file, color: Theme.of(context).primaryColor, size: 50,),
                              padding: EdgeInsets.all(kItemSpace),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor.withOpacity(0.3)
                              ),
                            ),
                            SizedBox(height: kItemSpace*2,),
                            Text("Resume"),
                            SizedBox(height: kItemSpace,),
                            Text("Oct 12, 2020", style: Theme.of(context).textTheme.caption,)
                          ],
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: showFiles,
            ),
          ],
        ),
      ),
    );
  }
  showFiles() {
    showModalBottomSheet(
        context: this.context,
        builder: (context) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // SizedBox(height: kItemSpace * 3,),
                // Text("Resume options", style: Theme.of(context).textTheme.headline6,),
                // SizedBox(height: kItemSpace,),
                ListTile(
                  leading: Icon(Icons.cloud_download),
                  title: Text("Download"),
                ),
                ListTile(
                  leading: Icon(Icons.archive),
                  title: Text("Archive"),
                ),
                ListTile(
                  leading: Icon(Icons.delete),
                  title: Text("Delete"),
                )
              ],
            ),
          );
        },
    );
  }
}

