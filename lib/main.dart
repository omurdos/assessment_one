import 'package:assessment_one/providers/employee_provider.dart';
import 'package:assessment_one/providers/home_provider.dart';
import 'package:assessment_one/providers/project_provider.dart';
import 'package:assessment_one/screens/employee/create_employee_screen.dart';
import 'package:assessment_one/screens/employee/edit_employee_screen.dart';
import 'package:assessment_one/screens/employee/employee_documents.dart';
import 'package:assessment_one/screens/employee/employee_permissions_screen.dart';
import 'package:assessment_one/screens/employee/employee_screen.dart';
import 'package:assessment_one/screens/employee/view_employee_screen.dart';
import 'package:assessment_one/screens/home_screen.dart';
import 'package:assessment_one/screens/project/create_project_screen.dart';
import 'package:assessment_one/screens/project/edit_project_screen.dart';
import 'package:assessment_one/screens/project/project_screen.dart';
import 'package:assessment_one/screens/project/view_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => HomeProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => EmployeeProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => ProjectProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assessment App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Colors.white,
          textTheme: TextTheme(
            headline6: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black87)
          ),
          iconTheme: IconThemeData(
            color: Colors.black87
          )
        ),
        canvasColor: Color(0xFFF5F6FB),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade300,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(5.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(5.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(5.0)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        EmployeeScreen.routeName: (context) => EmployeeScreen(),
        ProjectScreen.routeName: (context) => ProjectScreen(),
        CreateEmployeeScreen.routeName: (context) => CreateEmployeeScreen(),
        EditEmployeeScreen.routeName: (context) => EditEmployeeScreen(),
        CreateProjectScreen.routeName: (context) => CreateProjectScreen(),
        EditProjectScreen.routeName: (context) => EditProjectScreen(),
        ViewEmployeeScreen.routeName: (context) => ViewEmployeeScreen(),
        ViewProjectScreen.routeName: (context) => ViewProjectScreen(),
        EmployeeDocumentsScreen.routeName: (context) => EmployeeDocumentsScreen(),
        EmployeePermissionsScreen.routeName: (context) => EmployeePermissionsScreen(),
      },
    );
  }
}
