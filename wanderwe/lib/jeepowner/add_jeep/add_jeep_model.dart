import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_jeep_widget.dart' show AddJeepWidget;
import 'package:flutter/material.dart';

class AddJeepModel extends FlutterFlowModel<AddJeepWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for jeepModel widget.
  FocusNode? jeepModelFocusNode;
  TextEditingController? jeepModelController;
  String? Function(BuildContext, String?)? jeepModelControllerValidator;
  // State field(s) for regNo widget.
  FocusNode? regNoFocusNode;
  TextEditingController? regNoController;
  String? Function(BuildContext, String?)? regNoControllerValidator;
  // State field(s) for engNo widget.
  FocusNode? engNoFocusNode;
  TextEditingController? engNoController;
  String? Function(BuildContext, String?)? engNoControllerValidator;
  // State field(s) for engCC widget.
  FocusNode? engCCFocusNode;
  TextEditingController? engCCController;
  String? Function(BuildContext, String?)? engCCControllerValidator;
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode;
  TextEditingController? capacityController;
  String? Function(BuildContext, String?)? capacityControllerValidator;
  // State field(s) for jPrice widget.
  FocusNode? jPriceFocusNode;
  TextEditingController? jPriceController;
  String? Function(BuildContext, String?)? jPriceControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  JeepRecord? jeepDocCreated;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    jeepModelFocusNode?.dispose();
    jeepModelController?.dispose();

    regNoFocusNode?.dispose();
    regNoController?.dispose();

    engNoFocusNode?.dispose();
    engNoController?.dispose();

    engCCFocusNode?.dispose();
    engCCController?.dispose();

    capacityFocusNode?.dispose();
    capacityController?.dispose();

    jPriceFocusNode?.dispose();
    jPriceController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
