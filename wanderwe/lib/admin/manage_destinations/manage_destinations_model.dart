import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_destinations_widget.dart' show ManageDestinationsWidget;
import 'package:flutter/material.dart';

class ManageDestinationsModel
    extends FlutterFlowModel<ManageDestinationsWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<DestinationRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
