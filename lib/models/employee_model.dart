class EmployeeModel {
  late String name; //not mentioned on requirement
  String position;
  String category;
  String officeMail;
  String personalMail;
  String personalNumber;
  String officeNumber;
  List<String> documents;
  String department;
  List<String> permissions;
  List<String> groupPermissions;

  EmployeeModel({
    this.name = "",
    required this.position,
    required this.category,
    required this.officeMail,
    required this.department,
    required this.documents,
    required this.groupPermissions,
    required this.officeNumber,
    required this.permissions,
    required this.personalMail,
    required this.personalNumber,
  });
}
