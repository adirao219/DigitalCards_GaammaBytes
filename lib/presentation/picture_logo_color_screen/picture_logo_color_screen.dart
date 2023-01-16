import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PictureLogoColorScreen extends StatefulWidget {
  const PictureLogoColorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PictureLogoColorScreen createState() => _PictureLogoColorScreen();
}
class _PictureLogoColorScreen extends State<PictureLogoColorScreen> {

  
 TextEditingController _image_controller = new TextEditingController();
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
                          onTap: onTapArrowleft13)
                    ])),
                styleType: Style.bgStyle_14),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 31, right: 16, bottom: 31),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(267.00),
                          margin: getMargin(left: 20),
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
                              textAlign: TextAlign.left)),
                      Container(
                          height: getVerticalSize(135.00),
                          width: getHorizontalSize(326.00),
                          margin: getMargin(top: 62),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 6),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text(
                                                        "lbl_logo_picture".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoSansRegular14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.36),
                                                                height:
                                                                    getVerticalSize(
                                                                        1.26)))),
                                                CustomButton(
                                                    height: 23,
                                                    width: 81,
                                                    text: "lbl_remove".tr,
                                                    variant: ButtonVariant
                                                        .OutlineBlack9003f,
                                                    shape: ButtonShape
                                                        .RoundedBorder5,
                                                    padding:
                                                        ButtonPadding.PaddingT3,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12,
                                                    prefixWidget: Container(
                                                        margin:
                                                            getMargin(right: 9),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIconAlternateTrash)))
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(326.00),
                                          margin: getMargin(top: 8),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            1.00),
                                                        width:
                                                            getHorizontalSize(
                                                                326.00),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .gray300Cc,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        1.00))))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            1.00),
                                                        width:
                                                            getHorizontalSize(
                                                                326.00),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          1.00),
                                                                      width: getHorizontalSize(
                                                                          326.00),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray300Cc,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(1.00))))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          1.00),
                                                                      width: getHorizontalSize(
                                                                          326.00),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray300Cc,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(1.00)))))
                                                            ])))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 23),
                                          child: Text("lbl_card_color".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtNunitoSansRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36),
                                                      height: getVerticalSize(
                                                          1.26)))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgScreenshot56,
                                          height: getVerticalSize(22.00),
                                          width: getHorizontalSize(326.00),
                                          margin: getMargin(top: 33))
                                    ])),
                            CustomTextFormField(
                                width: 136,
                                focusNode: FocusNode(),
                                controller:
                                    _image_controller,
                                hintText: "lbl_select_image".tr,
                                margin: getMargin(right: 86),
                                variant: TextFormFieldVariant.OutlineBlack9003f,
                                padding: TextFormFieldPadding.PaddingT5,
                                fontStyle:
                                    TextFormFieldFontStyle.InterRegular12,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.topRight,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 13, top: 4, right: 12, bottom: 7),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMap)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(27.00)))
                          ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgScreenshot57,
                          height: getVerticalSize(153.00),
                          width: getHorizontalSize(133.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(5.00))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(326.00),
                          margin: getMargin(top: 26),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray300Cc,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(1.00)))),
                      CustomButton(
                          height: 62,
                          width: 295,
                          text: "lbl_next".tr,
                          margin: getMargin(top: 56, bottom: 5),
                          fontStyle: ButtonFontStyle.InterBlack16,
                          alignment: Alignment.center)
                    ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
