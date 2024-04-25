import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_route_plan_widget.dart' show AddRoutePlanWidget;
import 'package:flutter/material.dart';

class AddRoutePlanModel extends FlutterFlowModel<AddRoutePlanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for source widget.
  FocusNode? sourceFocusNode;
  TextEditingController? sourceController;
  String? Function(BuildContext, String?)? sourceControllerValidator;
  // State field(s) for destination widget.
  FocusNode? destinationFocusNode1;
  TextEditingController? destinationController1;
  String? Function(BuildContext, String?)? destinationController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  RoutePlanRecord? createdDoc;
  // State field(s) for destination widget.
  FocusNode? destinationFocusNode2;
  TextEditingController? destinationController2;
  String? Function(BuildContext, String?)? destinationController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    sourceFocusNode?.dispose();
    sourceController?.dispose();

    destinationFocusNode1?.dispose();
    destinationController1?.dispose();

    destinationFocusNode2?.dispose();
    destinationController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
