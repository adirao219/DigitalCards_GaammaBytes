import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DigitalCardOptionsScreen extends StatefulWidget {
  const DigitalCardOptionsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DigitalCardOptionsScreen createState() => _DigitalCardOptionsScreen();
}

class _DigitalCardOptionsScreen extends State<DigitalCardOptionsScreen> {
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
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 40, top: 44, right: 283),
                          onTap: onTapArrowleft4)
                    ])),
                styleType: Style.bgStyle_5),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: GestureDetector(
                    onTap: () {
                      onTapBussinesCard();
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 24),
                              child: Text("lbl_digital_cards".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold20.copyWith(
                                      height: getVerticalSize(1.00)))),
                          CustomImageView(
                              imagePath: ImageConstant.imgSearchcard1,
                              height: getVerticalSize(58.00),
                              width: getHorizontalSize(340.00),
                              margin: getMargin(left: 3, top: 10)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(324.00),
                                  margin: getMargin(top: 1),
                                  padding: getPadding(
                                      left: 15, top: 5, right: 15, bottom: 5),
                                  decoration: AppDecoration.outlineGray300
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 15),
                                            child: Text("lbl_business_card".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtNunitoBlack14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.36),
                                                        height: getVerticalSize(
                                                            1.26)))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBusinesscard1,
                                            height: getVerticalSize(94.00),
                                            width: getHorizontalSize(162.00),
                                            alignment: Alignment.centerRight,
                                            margin: getMargin(top: 3))
                                      ]))),
                          GestureDetector(
                              onTap: () {
                                onTapBussinesCard();
                              },
                              child: Container(
                                  height: getVerticalSize(119.00),
                                  width: getHorizontalSize(175.00),
                                  margin:
                                      getMargin(left: 15, top: 9, bottom: 5),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(right: 6),
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 17,
                                                    right: 23,
                                                    bottom: 17),
                                                decoration: AppDecoration
                                                    .fillPurpleA200
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 63),
                                                          child: Text(
                                                              "lbl_location_card"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtNunitoBlack14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.36),
                                                                      height: getVerticalSize(
                                                                          1.26))))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgGooglelogo181x122,
                                            height: getVerticalSize(81.00),
                                            width: getHorizontalSize(122.00),
                                            alignment: Alignment.bottomRight)
                                      ])))
                        ])))));
  }

  onTapArrowleft4() {
    Get.back();
  }

  onTapBussinesCard() {
    Get.toNamed(AppRoutes.basicCardEntryOneScreen);
  }
}
