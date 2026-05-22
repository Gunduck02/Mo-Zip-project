import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_create_widget.dart' show AccountCreateWidget;
import 'package:flutter/material.dart';

class AccountCreateModel extends FlutterFlowModel<AccountCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordC widget.
  FocusNode? passwordCFocusNode;
  TextEditingController? passwordCTextController;
  late bool passwordCVisibility;
  String? Function(BuildContext, String?)? passwordCTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordCFocusNode?.dispose();
    passwordCTextController?.dispose();
  }
}
