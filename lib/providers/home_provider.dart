import 'package:assessment_one/enums/screens.dart';
import 'package:assessment_one/providers/base_provider.dart';
import 'package:assessment_one/screens/employee/employee_screen.dart';
import 'package:assessment_one/screens/project/project_screen.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends BaseProvider {
  Screens _selectedScreen = Screens.EMPLOYEE;
  List<Widget> _screens = [EmployeeScreen(), ProjectScreen()];

  List<Widget> get screens => _screens;

  String _title = "Home";

  String get title => _title;

  set title(String value) {
    _title = value;
    notifyListeners();
  }

  Screens get selectedScreen => _selectedScreen;

  set selectedScreen(Screens value) {
    _selectedScreen = value;
    notifyListeners();
  }
  onBottomNavTap(int index){
    selectedScreen = Screens.values[index];
  }
}
