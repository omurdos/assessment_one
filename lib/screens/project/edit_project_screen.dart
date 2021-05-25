import 'package:assessment_one/constants.dart';
import 'package:assessment_one/widgets/project_employee_item.dart';
import 'package:assessment_one/widgets/titled_divider.dart';
import 'package:flutter/material.dart';

class EditProjectScreen extends StatefulWidget {
  static const routeName = "EditProjectScreen";

  @override
  _EditProjectScreenState createState() => _EditProjectScreenState();
}

class _EditProjectScreenState extends State<EditProjectScreen> {
  bool isIOS = false;
  bool isAndroid = false;
  bool isLinux = false;
  bool isMacOS = false;
  bool isWindows = false;

  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController endedDateController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Project"),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultLayoutPadding, vertical: kItemSpace),
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage("assets/images/bg.jpg"))),
                      ),
                      Positioned(
                          right: kItemSpace,
                          bottom: kItemSpace,
                          child: FloatingActionButton(
                            child: Icon(Icons.camera),
                            onPressed: () {},
                          ))
                    ],
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Project name",
                        prefixIcon: Icon(Icons.task)),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          onTap: () {
                            startDatePicker(context);
                          },
                          controller: startDateController,
                          decoration: InputDecoration(
                              labelText: "Start date",
                              hintText: "Project starting date",
                              prefixIcon: Icon(Icons.calendar_today)),
                        ),
                      ),
                      SizedBox(
                        width: kItemSpace,
                      ),
                      Expanded(
                        child: TextFormField(
                          onTap: () {
                            endDatePicker(context);
                          },
                          controller: endDateController,
                          decoration: InputDecoration(
                              labelText: "End date",
                              hintText: "Project starting date",
                              prefixIcon: Icon(Icons.calendar_today)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TextFormField(
                    onTap: () {
                      endedDatePicker(context);
                    },
                    controller: endedDateController,
                    decoration: InputDecoration(
                        labelText: "Ended date",
                        hintText: "",
                        prefixIcon: Icon(Icons.calendar_today)),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                        labelText: "Domain",
                        hintText: "Domain info",
                        prefixIcon: Icon(Icons.calendar_today)),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Credentials",
                        hintText: "Credentials",
                        prefixIcon: Icon(Icons.calendar_today)),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                        labelText: "Notes",
                        hintText: "notes",
                        prefixIcon: Icon(Icons.note)),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TitledDivider(title: "Platforms"),
                  SizedBox(
                    height: 5.0,
                  ),
                  Wrap(
                    children: [
                      CheckboxListTile(
                        title: Text("iOS"),
                        value: isIOS,
                        onChanged: (newValue) {
                          setState(() {
                            isIOS = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("Android"),
                        value: isAndroid,
                        onChanged: (newValue) {
                          setState(() {
                            isAndroid = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("Linux"),
                        value: isLinux,
                        onChanged: (newValue) {
                          setState(() {
                            isLinux = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("MacOS"),
                        value: isMacOS,
                        onChanged: (newValue) {
                          setState(() {
                            isMacOS = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("Windows"),
                        value: isWindows,
                        onChanged: (newValue) {
                          setState(() {
                            isWindows = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  TitledDivider(title: "Employees"),
                  SizedBox(
                    height: kItemSpace * 2,
                  ),
                  Container(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, position) {
                        return ProjectEmployeeItem();
                      },
                    ),
                  ),
                  SizedBox(
                    height: kItemSpace,
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
            )
          ],
        ),
      ),
    );
  }

  Future<void> startDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2030));
    if (picked != null)
      setState(() {
        startDateController.text = picked.toString().split(" ")[0];
      });
  }

  Future<void> endDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2030));
    if (picked != null)
      setState(() {
        endDateController.text = picked.toString().split(" ")[0];
      });
  }

  Future<void> endedDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2030));
    if (picked != null)
      setState(() {
        endedDateController.text = picked.toString().split(" ")[0];
      });
  }
}
