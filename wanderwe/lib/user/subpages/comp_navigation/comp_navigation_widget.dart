import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'comp_navigation_model.dart';
export 'comp_navigation_model.dart';

class CompNavigationWidget extends StatefulWidget {
  const CompNavigationWidget({super.key});

  @override
  State<CompNavigationWidget> createState() => _CompNavigationWidgetState();
}

class _CompNavigationWidgetState extends State<CompNavigationWidget> {
  late CompNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompNavigationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: 360.0,
        height: 70.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xBF3D7DF8), Color(0xFF4F8CFF)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(1.0, -1.0),
            end: AlignmentDirectional(-1.0, 1.0),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.max,
          children: [],
        ),
      ),
    );
  }
}
