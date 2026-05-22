import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'form_section_child_model.dart';
export 'form_section_child_model.dart';

class FormSectionChildWidget extends StatefulWidget {
  const FormSectionChildWidget({
    super.key,
    this.name,
    this.number,
  });

  final String? name;
  final String? number;

  @override
  State<FormSectionChildWidget> createState() => _FormSectionChildWidgetState();
}

class _FormSectionChildWidgetState extends State<FormSectionChildWidget> {
  late FormSectionChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSectionChildModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        wrapWithModel(
          model: _model.textFieldModel1,
          updateCallback: () => safeSetState(() {}),
          child: TextField2Widget(
            label: '이름',
            labelPresent: true,
            helper: '',
            helperPresent: false,
            hint: '성함을 입력해주세요',
            value: '',
            leadingIcon: Icon(
              Icons.person_outline_rounded,
              color: Color(0xFFE2E8F0),
            ),
            leadingIconPresent: true,
            trailingIconPresent: false,
            hintColor: 'hint',
            maxLines: 5,
            variant: 'outlined',
            error: false,
          ),
        ),
        wrapWithModel(
          model: _model.textFieldModel2,
          updateCallback: () => safeSetState(() {}),
          child: TextField2Widget(
            label: '학번/학과',
            labelPresent: true,
            helper: '',
            helperPresent: false,
            hint: '예: 20학번 컴퓨터공학과',
            value: '',
            leadingIcon: Icon(
              Icons.school_outlined,
              color: Color(0xFFE2E8F0),
            ),
            leadingIconPresent: true,
            trailingIconPresent: false,
            hintColor: 'hint',
            maxLines: 5,
            variant: 'outlined',
            error: false,
          ),
        ),
        wrapWithModel(
          model: _model.textFieldModel3,
          updateCallback: () => safeSetState(() {}),
          child: TextField2Widget(
            label: '연락처',
            labelPresent: true,
            helper: '',
            helperPresent: false,
            hint: '010-0000-0000',
            value: '',
            leadingIcon: Icon(
              Icons.phone_android_rounded,
              color: Color(0xFFE2E8F0),
            ),
            leadingIconPresent: true,
            trailingIconPresent: false,
            hintColor: 'hint',
            maxLines: 5,
            variant: 'outlined',
            error: false,
          ),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
