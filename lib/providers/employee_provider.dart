import 'package:assessment_one/models/employee_model.dart';
import 'package:assessment_one/providers/base_provider.dart';

class EmployeeProvider extends BaseProvider {
  late EmployeeModel _employeeModel;

  EmployeeModel get employeeModel => _employeeModel;

  set employeeModel(EmployeeModel value) {
    _employeeModel = value;
    notifyListeners();
  }
  var positions = [
    "Position 1",
    "Position 2",
    "Position 3",
    "Position 4",
  ];
  var categories = [
    "Category 1",
    "Category 2",
    "Category 3",
    "Category 4",
  ];
  var departments = [
    "Department 1",
    "Department 2",
    "Department 3",
    "Department 4"
  ];
}
