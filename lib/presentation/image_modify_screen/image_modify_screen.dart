import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class ImageModifyScreen extends StatefulWidget {
  const ImageModifyScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageModifyScreen createState() => _ImageModifyScreen();
}
class _ImageModifyScreen extends State<ImageModifyScreen> {
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
                          text: "lbl_select_image".tr.toUpperCase(),
                          margin: getMargin(
                              left: 116, top: 58, right: 115, bottom: 9)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft20)
                    ])),
                styleType: Style.bgStyle_21),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 8, right: 24, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle4193,
                          height: getSize(326.00),
                          width: getSize(326.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(10.00)),
                          margin: getMargin(left: 1)),
                      Padding(
                          padding: getPadding(left: 1, top: 21),
                          child: Text("lbl_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansSemiBold16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 1, top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 53,
                                        top: 11,
                                        right: 53,
                                        bottom: 11),
                                    decoration: AppDecoration.outlinePink900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: getSize(23.00),
                                              width: getSize(23.00),
                                              margin:
                                                  getMargin(top: 3, right: 11),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          ColorConstant.pink900,
                                                      width: getHorizontalSize(
                                                          1.00)))),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("lbl_sqaure".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoSansRegular14Pink900
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Container(
                                    padding: getPadding(
                                        left: 59,
                                        top: 12,
                                        right: 59,
                                        bottom: 12),
                                    decoration: AppDecoration.outlineGray30001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: getSize(23.00),
                                              width: getSize(23.00),
                                              margin: getMargin(top: 2),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              11.00)),
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .black900,
                                                      width: getHorizontalSize(
                                                          1.00)))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_circle".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoSansRegular14Black900
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 23),
                          child: Text("lbl_size".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansSemiBold16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 17),
                              child: Text("lbl_x".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansRegular14Black900
                                      .copyWith(
                                          height: getVerticalSize(1.00))))),
                      Padding(
                          padding: getPadding(left: 1, top: 1, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(145.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray30001)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(145.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray30001))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 25, right: 24, bottom: 58),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_ok".tr)
                    ]))));
  }

  onTapArrowleft20() {
    Get.back();
  }
}
