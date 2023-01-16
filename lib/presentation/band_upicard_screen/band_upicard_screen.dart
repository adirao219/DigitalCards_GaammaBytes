import 'controller/band_upicard_controller.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BandUpicardScreen extends GetWidget<BandUpicardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                          onTap: onTapArrowleft35)
                    ])),
                styleType: Style.bgStyle_36),
            body: Container(
                width: size.width,
                padding: getPadding(left: 10, top: 20, right: 10, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(286.00),
                          margin: getMargin(left: 26),
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
                                    text: "msg_band_type_ex_upi".tr,
                                    style: TextStyle(
                                        color: ColorConstant.pink900,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        height: getVerticalSize(1.00)))
                              ]),
                              textAlign: TextAlign.left)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(143.00),
                              width: getHorizontalSize(340.00),
                              margin: getMargin(top: 34, bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(right: 8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_upi_id".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoSansRegular14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.36),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.26))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          326.00),
                                                      margin: getMargin(
                                                          left: 6, top: 11),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300Cc,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      1.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 23),
                                                      child: Text(
                                                          "lbl_upi_mobile".tr,
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
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          326.00),
                                                      margin: getMargin(
                                                          left: 3, top: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300Cc,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      1.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 17,
                                                                bottom: 4),
                                                            child: Text(
                                                                "lbl_upi_qrcode"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNunitoSansRegular14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.36),
                                                                        height:
                                                                            getVerticalSize(1.26)))),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 2),
                                                            padding: getPadding(
                                                                left: 17,
                                                                top: 11,
                                                                right: 17,
                                                                bottom: 11),
                                                            decoration: AppDecoration
                                                                .outlineBlack9003f1
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Row(
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgMap,
                                                                      height: getVerticalSize(
                                                                          18.00),
                                                                      width: getHorizontalSize(
                                                                          17.00)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              18,
                                                                          top:
                                                                              3,
                                                                          right:
                                                                              7,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_select_image"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterBlack12
                                                                              .copyWith(height: getVerticalSize(1.00))))
                                                                ]))
                                                      ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          326.00),
                                                      margin: getMargin(
                                                          left: 3, top: 6),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300Cc,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            margin: getMargin(
                                                left: 248, top: 102, bottom: 7),
                                            padding: getPadding(
                                                left: 11,
                                                top: 8,
                                                right: 11,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineBlack9003f1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder5),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconAlternateTrash,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          9.00),
                                                      margin: getMargin(
                                                          top: 2, bottom: 4)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 11,
                                                          right: 9,
                                                          bottom: 3),
                                                      child: Text(
                                                          "lbl_remove".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBlack10
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00))))
                                                ])))
                                  ])))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 25, bottom: 55),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_save".tr)
                    ]))));
  }

  onTapArrowleft35() {
    Get.back();
  }
}
