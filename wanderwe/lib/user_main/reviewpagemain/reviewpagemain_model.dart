import '/flutter_flow/flutter_flow_util.dart';
import '/user_main/reviewandrating/reviewandrating_widget.dart';
import 'reviewpagemain_widget.dart' show ReviewpagemainWidget;
import 'package:flutter/material.dart';

class ReviewpagemainModel extends FlutterFlowModel<ReviewpagemainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for reviewandrating component.
  late ReviewandratingModel reviewandratingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    reviewandratingModel = createModel(context, () => ReviewandratingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    reviewandratingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
