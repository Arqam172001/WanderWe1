import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_room_widget.dart' show AddRoomWidget;
import 'package:flutter/material.dart';

class AddRoomModel extends FlutterFlowModel<AddRoomWidget> {
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
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode1;
  TextEditingController? capacityController1;
  String? Function(BuildContext, String?)? capacityController1Validator;
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode2;
  TextEditingController? capacityController2;
  String? Function(BuildContext, String?)? capacityController2Validator;
  // State field(s) for pr widget.
  FocusNode? prFocusNode;
  TextEditingController? prController;
  String? Function(BuildContext, String?)? prControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RoomRecord? hotelReff;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    typeFocusNode?.dispose();
    typeController?.dispose();

    capacityFocusNode1?.dispose();
    capacityController1?.dispose();

    capacityFocusNode2?.dispose();
    capacityController2?.dispose();

    prFocusNode?.dispose();
    prController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
