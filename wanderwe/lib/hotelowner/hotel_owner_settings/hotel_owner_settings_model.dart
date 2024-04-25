import '/flutter_flow/flutter_flow_util.dart';
import 'hotel_owner_settings_widget.dart' show HotelOwnerSettingsWidget;
import 'package:flutter/material.dart';

class HotelOwnerSettingsModel
    extends FlutterFlowModel<HotelOwnerSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
