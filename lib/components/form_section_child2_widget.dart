import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_section_child2_model.dart';
export 'form_section_child2_model.dart';

class FormSectionChild2Widget extends StatefulWidget {
  const FormSectionChild2Widget({super.key});

  @override
  State<FormSectionChild2Widget> createState() =>
      _FormSectionChild2WidgetState();
}

class _FormSectionChild2WidgetState extends State<FormSectionChild2Widget> {
  late FormSectionChild2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSectionChild2Model());

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
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '동아리에 지원하게 된 동기를 적어주세요 (최소 200자)',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
            wrapWithModel(
              model: _model.textFieldModel1,
              updateCallback: () => safeSetState(() {}),
              child: TextField2Widget(
                label: '',
                labelPresent: false,
                helper: '',
                helperPresent: false,
                hint: '내용을 입력해주세요',
                value: '',
                leadingIconPresent: false,
                trailingIconPresent: false,
                hintColor: 'hint',
                maxLines: 5,
                variant: 'outlined',
                error: false,
                leadingIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFFE2E8F0),
                ),
              ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '자신을 소개하는 한마디 적어주세요',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
            wrapWithModel(
              model: _model.textFieldModel2,
              updateCallback: () => safeSetState(() {}),
              child: TextField2Widget(
                label: '',
                labelPresent: false,
                helper: '',
                helperPresent: false,
                hint: '자유롭게 서술해주세요',
                value: '',
                leadingIconPresent: false,
                trailingIconPresent: false,
                hintColor: 'hint',
                maxLines: 5,
                variant: 'outlined',
                error: false,
                leadingIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFFE2E8F0),
                ),
              ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
