import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_hotels_widget.dart' show ManageHotelsWidget;
import 'package:flutter/material.dart';

class ManageHotelsModel extends FlutterFlowModel<ManageHotelsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<HotelRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
