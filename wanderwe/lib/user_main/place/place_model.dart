import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'place_widget.dart' show PlaceWidget;
import 'package:flutter/material.dart';

class PlaceModel extends FlutterFlowModel<PlaceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for amentities widget.
  FormFieldController<List<String>>? amentitiesValueController;
  String? get amentitiesValue => amentitiesValueController?.value?.firstOrNull;
  set amentitiesValue(String? val) =>
      amentitiesValueController?.value = val != null ? [val] : [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
