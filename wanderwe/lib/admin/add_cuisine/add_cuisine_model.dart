import '/flutter_flow/flutter_flow_util.dart';
import 'add_cuisine_widget.dart' show AddCuisineWidget;
import 'package:flutter/material.dart';

class AddCuisineModel extends FlutterFlowModel<AddCuisineWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode1;
  TextEditingController? myBioController1;
  String? Function(BuildContext, String?)? myBioController1Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode2;
  TextEditingController? myBioController2;
  String? Function(BuildContext, String?)? myBioController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    myBioFocusNode1?.dispose();
    myBioController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();

    myBioFocusNode2?.dispose();
    myBioController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
