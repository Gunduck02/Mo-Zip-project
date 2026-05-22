import '/components/button4_widget.dart';
import '/components/info_tag2_widget.dart';
import '/components/section_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'club_details_widget.dart' show ClubDetailsWidget;
import 'package:flutter/material.dart';

class ClubDetailsModel extends FlutterFlowModel<ClubDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for InfoTag.
  late InfoTag2Model infoTagModel1;
  // Model for InfoTag.
  late InfoTag2Model infoTagModel2;
  // Model for InfoTag.
  late InfoTag2Model infoTagModel3;
  // Model for SectionTitle.
  late SectionTitleModel sectionTitleModel1;
  // Model for SectionTitle.
  late SectionTitleModel sectionTitleModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for Button.
  late Button4Model buttonModel;

  @override
  void initState(BuildContext context) {
    infoTagModel1 = createModel(context, () => InfoTag2Model());
    infoTagModel2 = createModel(context, () => InfoTag2Model());
    infoTagModel3 = createModel(context, () => InfoTag2Model());
    sectionTitleModel1 = createModel(context, () => SectionTitleModel());
    sectionTitleModel2 = createModel(context, () => SectionTitleModel());
    buttonModel = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    infoTagModel1.dispose();
    infoTagModel2.dispose();
    infoTagModel3.dispose();
    sectionTitleModel1.dispose();
    sectionTitleModel2.dispose();
    buttonModel.dispose();
  }
}
