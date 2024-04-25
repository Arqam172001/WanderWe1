import '/flutter_flow/flutter_flow_util.dart';
import 'profile_hotel_widget.dart' show ProfileHotelWidget;
import 'package:flutter/material.dart';

class ProfileHotelModel extends FlutterFlowModel<ProfileHotelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
