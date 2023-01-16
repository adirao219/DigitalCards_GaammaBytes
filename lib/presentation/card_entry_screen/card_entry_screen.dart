
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CardEntryScreen extends StatefulWidget {
  const CardEntryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CardEntryScreen createState() => _CardEntryScreen();
}

class _CardEntryScreen extends State<CardEntryScreen> {


  TextEditingController _captioncontroller = new TextEditingController();
  TextEditingController _message_controller = new TextEditingController();
  TextEditingController _sender_controller = new TextEditingController();
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
                          onTap: onTapArrowleft12)
                    ])),
                styleType: Style.bgStyle_13),
            body: Container(
                width: size.width,
                padding: getPadding(top: 31, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(267.00),
                              margin: getMargin(left: 36),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_card_type_ex_new3".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            height: getVerticalSize(1.00))),
                                    TextSpan(
                                        text: "msg_template_type2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.00)))
                                  ]),
                                  textAlign: TextAlign.left))),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller:_captioncontroller,
                          hintText: "lbl_caption".tr,
                          margin: getMargin(top: 65)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller:_message_controller,
                          hintText: "lbl_message".tr,
                          margin: getMargin(top: 24)),
                      CustomTextFormField(
                          width: 353,
                          focusNode: FocusNode(),
                          controller: _sender_controller,
                          hintText: "lbl_sender".tr,
                          margin: getMargin(top: 23),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerRight),
                      CustomButton(
                          height: 62,
                          width: 295,
                          text: "lbl_next".tr,
                          margin: getMargin(top: 28, bottom: 5),
                          fontStyle: ButtonFontStyle.InterBlack16)
                    ]))));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
