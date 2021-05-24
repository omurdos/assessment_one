import 'package:assessment_one/models/employee_model.dart';

class ProjectModel {
  String name;
  List<String> platforms;
  String startDate;
  String endDate;
  String endedDate;
  String avatar;
  String domainInfo;
  String credentials;
  String notes;
  List<EmployeeModel> employees;

  ProjectModel(
      {required this.name,
      required this.platforms,
      required this.startDate,
      required this.endDate,
      required this.avatar,
      required this.credentials,
      required this.domainInfo,
      required this.employees,
      required this.endedDate,
      required this.notes});
}
