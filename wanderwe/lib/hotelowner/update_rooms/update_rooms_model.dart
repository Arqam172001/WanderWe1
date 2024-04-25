import '/flutter_flow/flutter_flow_util.dart';
import 'update_rooms_widget.dart' show UpdateRoomsWidget;
import 'package:flutter/material.dart';

class UpdateRoomsModel extends FlutterFlowModel<UpdateRoomsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for type widget.
  FocusNode? typeFocusNode;
  TextEditingController? typeController;
  String? Function(BuildContext, String?)? typeControllerValidator;
  // State field(s) for pr widget.
  FocusNode? prFocusNode1;
  TextEditingController? prController1;
  String? Function(BuildContext, String?)? prController1Validator;
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode;
  TextEditingController? capacityController;
  String? Function(BuildContext, String?)? capacityControllerValidator;
  // State field(s) for pr widget.
  FocusNode? prFocusNode2;
  TextEditingController? prController2;
  String? Function(BuildContext, String?)? prController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    typeFocusNode?.dispose();
    typeController?.dispose();

    prFocusNode1?.dispose();
    prController1?.dispose();

    capacityFocusNode?.dispose();
    capacityController?.dispose();

    prFocusNode2?.dispose();
    prController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
