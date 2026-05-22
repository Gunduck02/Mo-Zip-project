import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_section_child3_widget.dart' show FormSectionChild3Widget;
import 'package:flutter/material.dart';

class FormSectionChild3Model extends FlutterFlowModel<FormSectionChild3Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField2Model textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField2Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
