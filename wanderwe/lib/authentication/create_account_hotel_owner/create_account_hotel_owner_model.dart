import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_hotel_owner_widget.dart'
    show CreateAccountHotelOwnerWidget;
import 'package:flutter/material.dart';

class CreateAccountHotelOwnerModel
    extends FlutterFlowModel<CreateAccountHotelOwnerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for cnic widget.
  FocusNode? cnicFocusNode;
  TextEditingController? cnicController;
  String? Function(BuildContext, String?)? cnicControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for BusinessLicenseNumber widget.
  FocusNode? businessLicenseNumberFocusNode;
  TextEditingController? businessLicenseNumberController;
  String? Function(BuildContext, String?)?
      businessLicenseNumberControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    cnicFocusNode?.dispose();
    cnicController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    businessLicenseNumberFocusNode?.dispose();
    businessLicenseNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
