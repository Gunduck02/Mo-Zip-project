import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'form_section_child3_model.dart';
export 'form_section_child3_model.dart';

class FormSectionChild3Widget extends StatefulWidget {
  const FormSectionChild3Widget({super.key});

  @override
  State<FormSectionChild3Widget> createState() =>
      _FormSectionChild3WidgetState();
}

class _FormSectionChild3WidgetState extends State<FormSectionChild3Widget> {
  late FormSectionChild3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSectionChild3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.textFieldModel,
      updateCallback: () => safeSetState(() {}),
      child: TextField2Widget(
        label: '포트폴리오 링크',
        labelPresent: true,
        helper: '',
        helperPresent: false,
        hint: 'GitHub, 블로그, Notion 등',
        value: '',
        leadingIcon: Icon(
          Icons.link_rounded,
          color: Color(0xFFE2E8F0),
        ),
        leadingIconPresent: true,
        trailingIconPresent: false,
        hintColor: 'hint',
        maxLines: 5,
        variant: 'outlined',
        error: false,
      ),
    );
  }
}
