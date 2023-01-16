import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/core/utils/validation_functions.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CardEntryOneScreen extends StatefulWidget {
  const CardEntryOneScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CardEntryOneScreen createState() => _CardEntryOneScreen();
}
// ignore_for_file: must_be_immutable
class _CardEntryOneScreen extends State<CardEntryOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _website_controller = new TextEditingController();
  TextEditingController _whatsapp_controller = new TextEditingController();
  TextEditingController _emailId_controller = new TextEditingController();
  TextEditingController _phone_controller = new TextEditingController();
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
                          onTap: onTapArrowleft6)
                    ])),
                styleType: Style.bgStyle_7),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 22, top: 31, right: 22, bottom: 31),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(266.00),
                              margin: getMargin(left: 14),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_card_type_ex_buisness2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            height: getVerticalSize(1.00))),
                                    TextSpan(
                                        text: "msg_template_type".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.00)))
                                  ]),
                                  textAlign: TextAlign.left)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _website_controller,
                              hintText: "lbl_website".tr,
                              margin: getMargin(top: 64)),
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
                              controller: _whatsapp_controller,
                              hintText: "msg_whatsapp_number".tr,
                              margin: getMargin(top: 24),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          Spacer(),
                          CustomButton(
                              height: 62,
                              width: 295,
                              text: "lbl_next".tr,
                              margin: getMargin(bottom: 69),
                              fontStyle: ButtonFontStyle.InterBlack16,
                              alignment: Alignment.center)
                        ])))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
