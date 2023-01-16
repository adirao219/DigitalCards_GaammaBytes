import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/core/utils/validation_functions.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyProfileScreen createState() => _MyProfileScreen();
}
// ignore_for_file: must_be_immutable
class _MyProfileScreen extends State<MyProfileScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 TextEditingController _name_controller = new TextEditingController();
  TextEditingController _emailId_controller = new TextEditingController();
  TextEditingController _phone_controller = new TextEditingController();
  TextEditingController _country_controller = new TextEditingController();
  TextEditingController _countryCode_controller = new TextEditingController();
  TextEditingController _language_controller = new TextEditingController();
  TextEditingController _registerednumber_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(108.00),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(96.00),
                    width: size.width,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 40, top: 44, right: 283),
                          onTap: onTapArrowleft15)
                    ])),
                styleType: Style.bgStyle_16),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 22, top: 27, right: 22, bottom: 27),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18),
                              child: Text("lbl_my_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold20.copyWith(
                                      height: getVerticalSize(1.00)))),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _name_controller,
                              hintText: "lbl_name".tr,
                              margin: getMargin(top: 49),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _emailId_controller,
                              hintText: "lbl_email_id".tr,
                              margin: getMargin(top: 23),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _country_controller,
                              hintText: "lbl_country".tr,
                              margin: getMargin(top: 24)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _countryCode_controller,
                              hintText: "lbl_country_code".tr,
                              margin: getMargin(top: 24)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _phone_controller,
                              hintText: "lbl_phone_number".tr,
                              margin: getMargin(top: 23),
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _language_controller,
                              hintText: "lbl_language".tr,
                              margin: getMargin(top: 21)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _registerednumber_controller,
                              hintText: "msg_registered_number".tr,
                              margin: getMargin(top: 24),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          Container(
                              width: getHorizontalSize(326.00),
                              margin: getMargin(top: 85, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 16, right: 128, bottom: 16),
                              decoration: AppDecoration.txtOutlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtCircleBorder31),
                              child: Text("lbl_save".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansBlack16
                                      .copyWith(height: getVerticalSize(1.00))))
                        ])))));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
