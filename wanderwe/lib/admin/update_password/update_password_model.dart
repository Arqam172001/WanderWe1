import '/flutter_flow/flutter_flow_util.dart';
import 'update_password_widget.dart' show UpdatePasswordWidget;
import 'package:flutter/material.dart';

class UpdatePasswordModel extends FlutterFlowModel<UpdatePasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for textField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldController;
  String? Function(BuildContext, String?)? textFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
