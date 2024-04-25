import '/flutter_flow/flutter_flow_util.dart';
import 'type_of_room_widget.dart' show TypeOfRoomWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TypeOfRoomModel extends FlutterFlowModel<TypeOfRoomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldController;
  final textFieldMask = MaskTextInputFormatter(mask: '####-#######');
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
