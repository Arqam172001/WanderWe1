import '/flutter_flow/flutter_flow_util.dart';
import 'hotel_password_widget.dart' show HotelPasswordWidget;
import 'package:flutter/material.dart';

class HotelPasswordModel extends FlutterFlowModel<HotelPasswordWidget> {
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
