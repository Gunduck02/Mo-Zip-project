import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_card_widget.dart' show ClubCardWidget;
import 'package:flutter/material.dart';

class ClubCardModel extends FlutterFlowModel<ClubCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
