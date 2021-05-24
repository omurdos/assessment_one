import 'package:assessment_one/constants.dart';
import 'package:assessment_one/models/project_model.dart';
import 'package:assessment_one/providers/project_provider.dart';
import 'package:assessment_one/widgets/titled_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateProjectScreen extends StatefulWidget {
  static const routeName = "createProjectScreen";

  @override
  _CreateProjectScreenState createState() => _CreateProjectScreenState();
}

class _CreateProjectScreenState extends State<CreateProjectScreen> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;

  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController endedDateController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  ProjectModel? projectModel;

  //TODO: This code is related to one form for both creation and modification of project.
  @override
  void initState() {
    super.initState();
    projectModel = Provider.of<ProjectProvider>(context, listen: false).selectedProjectModel;
    if(projectModel == null){

    }else{
      populate();
    }
  }

  populate() async{
    //TODO: Implement a one form for edit and create
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Project"),
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
                        value: checkBox1,
                        onChanged: (newValue) {
                          setState(() {
                            checkBox1 = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("Android"),
                        value: checkBox1,
                        onChanged: (newValue) {
                          setState(() {
                            checkBox1 = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("Linux"),
                        value: checkBox1,
                        onChanged: (newValue) {
                          setState(() {
                            checkBox1 = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("MacOS"),
                        value: checkBox1,
                        onChanged: (newValue) {
                          setState(() {
                            checkBox1 = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      CheckboxListTile(
                        title: Text("Windows"),
                        value: checkBox1,
                        onChanged: (newValue) {
                          setState(() {
                            checkBox1 = newValue ?? false;
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
                    height: kItemSpace,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add employees"),
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
