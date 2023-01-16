
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShareScreen createState() => _ShareScreen();
}
class _ShareScreen extends State<ShareScreen> {
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
                          text: "lbl_share2".tr.toUpperCase(),
                          margin: getMargin(
                              left: 153, top: 58, right: 152, bottom: 9)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft25)
                    ])),
                styleType: Style.bgStyle_26),
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
                      Container(
                          margin: getMargin(
                              left: 37, top: 78, right: 57, bottom: 5),
                          padding: getPadding(
                              left: 22, top: 17, right: 22, bottom: 17),
                          decoration: AppDecoration.outlineBlack9003f2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgWhatsapplogoo1,
                                height: getVerticalSize(30.00),
                                width: getHorizontalSize(37.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(5.00))),
                            CustomImageView(
                                imagePath: ImageConstant.imgGmaillogo1,
                                height: getSize(30.00),
                                width: getSize(30.00),
                                margin: getMargin(left: 50, right: 71))
                          ]))
                    ]))));
  }

  onTapArrowleft25() {
    Get.back();
  }
}
