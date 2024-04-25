import '/flutter_flow/flutter_flow_util.dart';
import 'budget_update_widget.dart' show BudgetUpdateWidget;
import 'package:flutter/material.dart';

class BudgetUpdateModel extends FlutterFlowModel<BudgetUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
