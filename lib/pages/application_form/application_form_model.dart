import '/components/button3_widget.dart';
import '/components/form_section_widget.dart';
import '/components/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'application_form_widget.dart' show ApplicationFormWidget;
import 'package:flutter/material.dart';

class ApplicationFormModel extends FlutterFlowModel<ApplicationFormWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FormSection.
  late FormSectionModel formSectionModel1;
  // Model for FormSection.
  late FormSectionModel formSectionModel2;
  // Model for FormSection.
  late FormSectionModel formSectionModel3;
  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;
  // Model for Button.
  late Button3Model buttonModel;

  @override
  void initState(BuildContext context) {
    formSectionModel1 = createModel(context, () => FormSectionModel());
    formSectionModel2 = createModel(context, () => FormSectionModel());
    formSectionModel3 = createModel(context, () => FormSectionModel());
    switchComponentModel = createModel(context, () => SwitchComponentModel());
    buttonModel = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    formSectionModel1.dispose();
    formSectionModel2.dispose();
    formSectionModel3.dispose();
    switchComponentModel.dispose();
    buttonModel.dispose();
  }
}
