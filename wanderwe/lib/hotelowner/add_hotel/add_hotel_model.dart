import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_hotel_widget.dart' show AddHotelWidget;
import 'package:flutter/material.dart';

class AddHotelModel extends FlutterFlowModel<AddHotelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for contact widget.
  FocusNode? contactFocusNode1;
  TextEditingController? contactController1;
  String? Function(BuildContext, String?)? contactController1Validator;
  // State field(s) for contact widget.
  FocusNode? contactFocusNode2;
  TextEditingController? contactController2;
  String? Function(BuildContext, String?)? contactController2Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for rooms widget.
  FocusNode? roomsFocusNode;
  TextEditingController? roomsController;
  String? Function(BuildContext, String?)? roomsControllerValidator;
  // State field(s) for rating widget.
  FocusNode? ratingFocusNode;
  TextEditingController? ratingController;
  String? Function(BuildContext, String?)? ratingControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  HotelRecord? currHotel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    contactFocusNode1?.dispose();
    contactController1?.dispose();

    contactFocusNode2?.dispose();
    contactController2?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    roomsFocusNode?.dispose();
    roomsController?.dispose();

    ratingFocusNode?.dispose();
    ratingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
