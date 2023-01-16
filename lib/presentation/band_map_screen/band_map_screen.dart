import 'controller/band_map_controller.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BandMapScreen extends GetWidget<BandMapController> {
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
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarTitle(
                          text: "lbl_bands2".tr.toUpperCase(),
                          margin: getMargin(
                              left: 152, top: 60, right: 151, bottom: 7)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft29)
                    ])),
                styleType: Style.bgStyle_30),
            body: Container(
                width: size.width,
                padding: getPadding(left: 9, top: 20, right: 9, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(286.00),
                              margin: getMargin(left: 27),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_card_name_ex3".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            height: getVerticalSize(1.00))),
                                    TextSpan(
                                        text: "msg_band_type_ex_map".tr,
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
                          controller: controller.group33633Controller,
                          hintText: "lbl_heading".tr,
                          margin: getMargin(top: 35)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33636Controller,
                          hintText: "lbl_location".tr,
                          margin: getMargin(top: 22)),
                      CustomImageView(
                          imagePath: ImageConstant.imgScreenshot55,
                          height: getVerticalSize(171.00),
                          width: getHorizontalSize(344.00),
                          margin: getMargin(top: 21)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33633OneController,
                          hintText: "lbl_latitude".tr,
                          margin: getMargin(top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33635Controller,
                          hintText: "lbl_longitude".tr,
                          margin: getMargin(top: 24, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 25, bottom: 55),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_save".tr)
                    ]))));
  }

  onTapArrowleft29() {
    Get.back();
  }
}
