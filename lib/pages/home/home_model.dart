import '/components/club_card_recommend_widget.dart';
import '/components/dashboard_card_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Models for ClubCardRecommend.
  late FlutterFlowDynamicModels<ClubCardRecommendModel> clubCardRecommendModels;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // Model for DashboardCard.
  late DashboardCardModel dashboardCardModel1;
  // Model for DashboardCard.
  late DashboardCardModel dashboardCardModel2;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    clubCardRecommendModels =
        FlutterFlowDynamicModels(() => ClubCardRecommendModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    dashboardCardModel1 = createModel(context, () => DashboardCardModel());
    dashboardCardModel2 = createModel(context, () => DashboardCardModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    clubCardRecommendModels.dispose();
    sectionHeaderModel2.dispose();
    dashboardCardModel1.dispose();
    dashboardCardModel2.dispose();
  }
}
