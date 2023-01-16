import 'controller/bands_controller.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BandsScreen extends GetWidget<BandsController> {
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
                          onTap: onTapArrowleft23)
                    ])),
                styleType: Style.bgStyle_24),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_card_name_ex".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoBold18
                              .copyWith(height: getVerticalSize(1.00))),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33636Controller,
                          hintText: "lbl_link".tr,
                          margin: getMargin(left: 1, top: 21)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33633Controller,
                          hintText: "lbl_note".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33635Controller,
                          hintText: "lbl_map".tr,
                          margin: getMargin(left: 1, top: 24)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33637Controller,
                          hintText: "lbl_video".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33639Controller,
                          hintText: "lbl_picture".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33640Controller,
                          hintText: "lbl_contact_band".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33641Controller,
                          hintText: "lbl_icon_group".tr,
                          margin: getMargin(left: 1, top: 24)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33642Controller,
                          hintText: "lbl_bank_details".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: controller.group33634Controller,
                          hintText: "lbl_upi_card".tr,
                          margin: getMargin(left: 1, top: 23, bottom: 5),
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

  onTapArrowleft23() {
    Get.back();
  }
}
