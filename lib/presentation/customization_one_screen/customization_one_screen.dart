import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CustomizationOneScreen extends StatefulWidget {
  const CustomizationOneScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomizationOneScreen createState() => _CustomizationOneScreen();
}


class _CustomizationOneScreen extends State<CustomizationOneScreen> {
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
                          onTap: onTapArrowleft9)
                    ])),
                styleType: Style.bgStyle_10),
            body: Container(
                width: size.width,
                padding: getPadding(left: 23, top: 31, right: 23, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(266.00),
                              margin: getMargin(left: 13),
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
                                  textAlign: TextAlign.left))),
                      Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(325.00),
                          margin: getMargin(top: 32),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 18),
                                    child: Text("lbl_card_preview".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtNunitoSansRegular14Pink900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.36),
                                                height:
                                                    getVerticalSize(1.26))))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(60.00),
                                    width: getHorizontalSize(325.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrangeA10033,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(15.00)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: ColorConstant.black9003f,
                                              spreadRadius:
                                                  getHorizontalSize(2.00),
                                              blurRadius:
                                                  getHorizontalSize(2.00),
                                              offset: Offset(0, 4))
                                        ])))
                          ])),
                      Container(
                          margin: getMargin(left: 31, top: 45, right: 19),
                          padding: getPadding(
                              left: 54, top: 8, right: 54, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVideocamera,
                                height: getSize(21.00),
                                width: getSize(21.00),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding:
                                    getPadding(left: 35, top: 1, right: 62),
                                child: Text("lbl_footer".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBlack16.copyWith(
                                        height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          margin: getMargin(left: 31, top: 17, right: 19),
                          padding: getPadding(
                              left: 55, top: 6, right: 55, bottom: 6),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMap,
                                height: getVerticalSize(25.00),
                                width: getHorizontalSize(24.00)),
                            Padding(
                                padding: getPadding(
                                    left: 31, top: 3, right: 26, bottom: 2),
                                child: Text("lbl_icon_group".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBlack16.copyWith(
                                        height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          margin: getMargin(left: 31, top: 18, right: 19),
                          padding: getPadding(
                              left: 55, top: 8, right: 55, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMapWhiteA700,
                                height: getVerticalSize(17.00),
                                width: getHorizontalSize(24.00),
                                margin: getMargin(top: 1, bottom: 2)),
                            Padding(
                                padding:
                                    getPadding(left: 31, right: 63, bottom: 1),
                                child: Text("lbl_bands".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBlack16.copyWith(
                                        height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          margin: getMargin(left: 31, top: 20, right: 19),
                          padding: getPadding(
                              left: 55, top: 8, right: 55, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgComputer,
                                height: getVerticalSize(18.00),
                                width: getHorizontalSize(24.00),
                                margin: getMargin(bottom: 4)),
                            Padding(
                                padding:
                                    getPadding(left: 31, right: 32, bottom: 1),
                                child: Text("lbl_advanced".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBlack16.copyWith(
                                        height: getVerticalSize(1.00))))
                          ])),
                      Container(
                          margin: getMargin(left: 31, top: 20, right: 19),
                          padding: getPadding(
                              left: 55, top: 7, right: 55, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgQuestion,
                                    height: getVerticalSize(18.00),
                                    width: getHorizontalSize(26.00),
                                    margin: getMargin(top: 1, bottom: 3)),
                                Padding(
                                    padding:
                                        getPadding(left: 29, top: 3, right: 76),
                                    child: Text("lbl_help".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBlack16
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Container(
                          margin: getMargin(left: 31, top: 21, right: 19),
                          padding: getPadding(
                              left: 55, top: 7, right: 55, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgUpload,
                                    height: getVerticalSize(16.00),
                                    width: getHorizontalSize(24.00),
                                    margin: getMargin(top: 2, bottom: 4)),
                                Padding(
                                    padding: getPadding(
                                        left: 31, right: 53, bottom: 2),
                                    child: Text("lbl_publish".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBlack16
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Container(
                          margin: getMargin(
                              left: 31, top: 21, right: 19, bottom: 5),
                          padding: getPadding(
                              left: 59, top: 7, right: 59, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgShare,
                                    height: getVerticalSize(18.00),
                                    width: getHorizontalSize(17.00),
                                    margin: getMargin(bottom: 6)),
                                Padding(
                                    padding: getPadding(
                                        left: 34, top: 1, right: 62, bottom: 2),
                                    child: Text("lbl_share".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBlack16
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ]))
                    ]))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
