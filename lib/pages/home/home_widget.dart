import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/club_card_recommend_widget.dart';
import '/components/dashboard_card_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_model.dart';
export 'home_model.dart';

/// 요청하신 대로 "모든 텍스트를 한국어로 작성해 달라"는 내용이 포함되어 있으며, FlutterFlow가 이해하기 쉽도록 레이아웃,
/// 위젯 구조(Column, Row, ListView 등), UI 요소들을 상세히 영어로 묘사했습니다.
///
/// 아래 텍스트를 복사해서 사용하시면 됩니다.
///
/// 📋 FlutterFlow 디자이너용 프롬프트 (복사해서 사용하세요)
/// Create a modern mobile app home screen for a college club recommendation
/// platform. Crucial Requirement: All text on the UI must be written in
/// Korean as requested.
///
/// Use a clean, minimal white background with rounded corners for cards. The
/// page should be vertically scrollable (SingleChildScrollView). Here is the
/// detailed breakdown from top to bottom:
///
/// 1. Header & AppBar:
///
/// Left side: A large, bold greeting text "안녕하세요, 현성님 👋" (Hello, Hyunsung),
/// and below it a smaller gray text "이번 주 지원 마감 동아리 3개".
///
/// Right side: A notification bell icon.
///
/// 2. Highlight Banner:
///
/// A light blue container with rounded corners.
///
/// Inside: A calendar icon on the left, text "이번 주 마감 동아리 3개" with a subtitle
/// "마감일 순으로 확인해보세요!", and a right-pointing chevron icon on the far right.
///
/// 3. Section 1: Personalized Recommendations (맞춤 추천 동아리):
///
/// A Row with a title "맞춤 추천 동아리" on the left and a "더보기 >" (View more) text
/// button on the right.
///
/// Below it, a horizontally scrollable ListView containing 3 cards.
///
/// Each Card includes: A cover image occupying the top half, a bookmark icon
/// overlaid on the top right of the image. Below the image, a bold title
/// (e.g., "포토그래피 소울"), a short gray subtitle, and a Row of small rounded
/// Chips for categories (e.g., "사진", "예술").
///
/// 4. Section 2: Closing Soon (마감 임박 동아리):
///
/// A Row with a title "마감 임박 동아리" and a "더보기 >" button.
///
/// Below it, a card structured like a ListTile.
///
/// Left side: A square container with red text "D-2" inside.
///
/// Middle: A bold title "Enactus 서울대", a subtitle, and category Chips ("봉사",
/// "기획").
///
/// Right side: An outlined bookmark icon.
///
/// 5. Dashboard Cards (Grid/Row):
///
/// A Row with two equal-sized square containers side-by-side.
///
/// Left Container (Light pink theme): Title "찜한 동아리" (Saved clubs) in red, a
/// large number "7개", a red heart icon, and a small subtitle "최근 추가: 2일 전".
///
/// Right Container (Light blue theme): Title "지원 내역" (Applications) in blue,
/// a large number "2개", a clipboard icon, and a small subtitle "1개 서류 평가 중".
///
/// 6. Section 3: Recently Viewed (최근 본 동아리):
///
/// A Row with a title "최근 본 동아리" and a "더보기 >" button.
///
/// A horizontally scrollable ListView containing circular or rounded-square
/// profile images of clubs. Below each image, center-aligned small text for
/// the club name (e.g., "데이터사이언스학회").
class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 393.0,
              maxHeight: 852.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          '안녕하세요, ${currentUserDisplayName}님',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.notifications_none,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(LoginWidget.routeName,
                                          context.mounted);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            FutureBuilder<int>(
                              future: queryApplicationsRecordCount(
                                queryBuilder: (applicationsRecord) =>
                                    applicationsRecord
                                        .where(
                                          'user_ref',
                                          isEqualTo: currentUserReference,
                                        )
                                        .where(
                                          'status',
                                          isEqualTo: '승인',
                                        ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                int columnCount = snapshot.data!;

                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (columnCount > 0)
                                      Container(
                                        width: 343.5,
                                        height: 130.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE8F5FF),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFFF1F5F9),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Container(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEFF6FF),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .calendar_month_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 70.0, 0.0),
                                                  child: Text(
                                                    '내 동아리 소식',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: StreamBuilder<
                                                      List<ApplicationsRecord>>(
                                                    stream:
                                                        queryApplicationsRecord(
                                                      queryBuilder:
                                                          (applicationsRecord) =>
                                                              applicationsRecord
                                                                  .where(
                                                                    'user_ref',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'status',
                                                                    isEqualTo:
                                                                        '승인',
                                                                  ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: Image.asset(
                                                            '',
                                                          ),
                                                        );
                                                      }
                                                      List<ApplicationsRecord>
                                                          pageViewApplicationsRecordList =
                                                          snapshot.data!;
                                                      if (pageViewApplicationsRecordList
                                                          .isEmpty) {
                                                        return Image.asset(
                                                          '',
                                                        );
                                                      }

                                                      return Container(
                                                        width: 500.0,
                                                        height: 500.0,
                                                        child: PageView.builder(
                                                          controller: _model
                                                                  .pageViewController1 ??=
                                                              PageController(
                                                                  initialPage: max(
                                                                      0,
                                                                      min(
                                                                          0,
                                                                          pageViewApplicationsRecordList.length -
                                                                              1))),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              pageViewApplicationsRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              pageViewIndex) {
                                                            final pageViewApplicationsRecord =
                                                                pageViewApplicationsRecordList[
                                                                    pageViewIndex];
                                                            return StreamBuilder<
                                                                ClubsRecord>(
                                                              stream: ClubsRecord
                                                                  .getDocument(
                                                                      pageViewApplicationsRecord
                                                                          .clubRef!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }

                                                                final imageClubsRecord =
                                                                    snapshot
                                                                        .data!;

                                                                return InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      MyClubHomeWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'clubRef':
                                                                            serializeParam(
                                                                          imageClubsRecord
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      imageClubsRecord
                                                                          .thumbnailUrl,
                                                                      width: double
                                                                          .infinity,
                                                                      height: double
                                                                          .infinity,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (columnCount == 0)
                                      Container(
                                        width: 343.5,
                                        height: 60.17,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEFF6FF),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.calendar_month_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  '동아리에 가입하고 소식을 받아보세요!',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      title: '맞춤 추천 동아리',
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 260.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: AuthUserStreamWidget(
                                        builder: (context) =>
                                            StreamBuilder<List<ClubsRecord>>(
                                          stream: queryClubsRecord(
                                            queryBuilder: (clubsRecord) =>
                                                clubsRecord
                                                    .whereArrayContainsAny(
                                                        'tags',
                                                        (currentUserDocument
                                                                ?.myTag
                                                                .toList() ??
                                                            [])),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ClubsRecord>
                                                listViewClubsRecordList =
                                                snapshot.data!;

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: listViewClubsRecordList
                                                  .length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 20.0),
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewClubsRecord =
                                                    listViewClubsRecordList[
                                                        listViewIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      ClubDetailsWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'clubRef':
                                                            serializeParam(
                                                          listViewClubsRecord,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'clubRef':
                                                            listViewClubsRecord,
                                                      },
                                                    );
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .clubCardRecommendModels
                                                        .getModel(
                                                      listViewClubsRecord
                                                          .reference.id,
                                                      listViewIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    updateOnChange: true,
                                                    child:
                                                        ClubCardRecommendWidget(
                                                      key: Key(
                                                        'Keyui1_${listViewClubsRecord.reference.id}',
                                                      ),
                                                      imgDesc:
                                                          listViewClubsRecord
                                                              .thumbnailUrl,
                                                      name: listViewClubsRecord
                                                          .clubName,
                                                      subtitle:
                                                          listViewClubsRecord
                                                              .description,
                                                      clubinfo:
                                                          listViewClubsRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                minHeight: 150.0,
                                maxHeight: 200.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      title: '마감 임박 동아리',
                                    ),
                                  ),
                                  Container(
                                    height: 110.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(24.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Color(0xFFF1F5F9),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Container(
                                      child: StreamBuilder<List<ClubsRecord>>(
                                        stream: queryClubsRecord(
                                          queryBuilder: (clubsRecord) =>
                                              clubsRecord
                                                  .where(
                                                    'deadline',
                                                    isGreaterThan:
                                                        getCurrentTimestamp,
                                                  )
                                                  .where(
                                                    'deadline',
                                                    isLessThanOrEqualTo:
                                                        functions
                                                            .getThreeDaysLater(),
                                                  ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<ClubsRecord>
                                              pageViewClubsRecordList =
                                              snapshot.data!;

                                          return Container(
                                            width: double.infinity,
                                            height: 300.0,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 40.0),
                                                  child: PageView.builder(
                                                    controller: _model
                                                            .pageViewController2 ??=
                                                        PageController(
                                                            initialPage: max(
                                                                0,
                                                                min(
                                                                    0,
                                                                    pageViewClubsRecordList
                                                                            .length -
                                                                        1))),
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        pageViewClubsRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        pageViewIndex) {
                                                      final pageViewClubsRecord =
                                                          pageViewClubsRecordList[
                                                              pageViewIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          1.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    ClubDetailsWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'clubRef':
                                                                          serializeParam(
                                                                        pageViewClubsRecord,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      'clubRef':
                                                                          pageViewClubsRecord,
                                                                    },
                                                                  );
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          56.0,
                                                                      height:
                                                                          56.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          functions
                                                                              .ddaycal(pageViewClubsRecord.deadline),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                lineHeight: 1.4,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 1,
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            pageViewClubsRecord.clubName,
                                                                            style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                  lineHeight: 1.4,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            pageViewClubsRecord.description,
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                  lineHeight: 1.4,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 4.0)),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          ToggleIcon(
                                                                        onPressed:
                                                                            () async {
                                                                          await pageViewClubsRecord
                                                                              .reference
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'rr': !pageViewClubsRecord.rr,
                                                                              },
                                                                            ),
                                                                          });
                                                                        },
                                                                        value: pageViewClubsRecord
                                                                            .rr,
                                                                        onIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .bookmark,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        offIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .bookmark_border,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: smooth_page_indicator
                                                        .SmoothPageIndicator(
                                                      controller: _model
                                                              .pageViewController2 ??=
                                                          PageController(
                                                              initialPage: max(
                                                                  0,
                                                                  min(
                                                                      0,
                                                                      pageViewClubsRecordList
                                                                              .length -
                                                                          1))),
                                                      count:
                                                          pageViewClubsRecordList
                                                              .length,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      onDotClicked: (i) async {
                                                        await _model
                                                            .pageViewController2!
                                                            .animateToPage(
                                                          i,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                        safeSetState(() {});
                                                      },
                                                      effect:
                                                          smooth_page_indicator
                                                              .SlideEffect(
                                                        spacing: 8.0,
                                                        radius: 8.0,
                                                        dotWidth: 8.0,
                                                        dotHeight: 8.0,
                                                        dotColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        activeDotColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        paintStyle:
                                                            PaintingStyle.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FutureBuilder<int>(
                                      future: queryLikeRecordCount(
                                        queryBuilder: (likeRecord) =>
                                            likeRecord.where(
                                          'user_ref',
                                          isEqualTo: currentUserReference,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        int dashboardCardCount = snapshot.data!;

                                        return wrapWithModel(
                                          model: _model.dashboardCardModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: DashboardCardWidget(
                                            bgColor: Color(0xFFFFF1F2),
                                            title: '찜한 동아리',
                                            accentColor: Color(0xFF9F1239),
                                            icon: Icon(
                                              Icons.favorite_rounded,
                                              color: Color(0xFFF43F5E),
                                              size: 24.0,
                                            ),
                                            count: '0개',
                                            status: '최근 추가: 2일 전',
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FutureBuilder<int>(
                                      future: queryApplicationsRecordCount(
                                        queryBuilder: (applicationsRecord) =>
                                            applicationsRecord.where(
                                          'user_ref',
                                          isEqualTo: currentUserReference,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        int dashboardCardCount = snapshot.data!;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                ApplyWidget.routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.dashboardCardModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: DashboardCardWidget(
                                              bgColor: Color(0xFFF0F9FF),
                                              title: '지원 내역',
                                              accentColor: Color(0xFF075985),
                                              icon: Icon(
                                                Icons.assignment_rounded,
                                                color: Color(0xFF0284C7),
                                                size: 24.0,
                                              ),
                                              count:
                                                  '${dashboardCardCount.toString()}개',
                                              status: '1개 서류 평가 중',
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                            ),
                          ].divide(SizedBox(height: 32.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
