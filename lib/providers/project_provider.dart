import 'package:assessment_one/models/project_model.dart';
import 'package:assessment_one/providers/base_provider.dart';

class ProjectProvider extends BaseProvider {
  ProjectModel? _selectedProjectModel;

  ProjectModel? get selectedProjectModel => _selectedProjectModel;

  set selectedProjectModel(ProjectModel? value) {
    _selectedProjectModel = value;
    notifyListeners();
  }
}