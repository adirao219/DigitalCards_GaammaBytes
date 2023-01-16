import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class EGreetingCardOptionsScreen extends StatefulWidget {
  const EGreetingCardOptionsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EGreetingCardOptionsScreen createState() => _EGreetingCardOptionsScreen();
}
class _EGreetingCardOptionsScreen
    extends State<EGreetingCardOptionsScreen> {
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
                          onTap: onTapArrowleft10)
                    ])),
                styleType: Style.bgStyle_11),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24),
                          child: Text("msg_e_greeting_cards".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          height: getVerticalSize(341.00),
                          width: getHorizontalSize(338.00),
                          margin: getMargin(left: 5, top: 24, bottom: 5),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage1,
                                height: getVerticalSize(212.00),
                                width: getHorizontalSize(334.00),
                                alignment: Alignment.topCenter),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: getVerticalSize(124.00),
                                    width: getHorizontalSize(150.00),
                                    margin: getMargin(left: 7, bottom: 3),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGreen1,
                                              height: getVerticalSize(124.00),
                                              width: getHorizontalSize(150.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(9.00)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(112.00),
                                                  width:
                                                      getHorizontalSize(131.00),
                                                  margin: getMargin(right: 5),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                                "lbl_christmas"
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
                                                                        height:
                                                                            getVerticalSize(1.26)))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPngimage1,
                                                            height:
                                                                getVerticalSize(
                                                                    93.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    73.00),
                                                            alignment: Alignment
                                                                .bottomRight)
                                                      ])))
                                        ]))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgWhatsappimage20221230,
                                height: getVerticalSize(134.00),
                                width: getHorizontalSize(172.00),
                                alignment: Alignment.bottomRight)
                          ]))
                    ]))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
