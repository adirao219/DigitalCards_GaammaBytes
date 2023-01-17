import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:digitalcards/domain/googleauth/google_auth_helper.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
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
                          onTap: onTapArrowleft)
                    ])),
                styleType: Style.bgStyle),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 26, right: 24, bottom: 26),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_welcome".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold20
                              .copyWith(height: getVerticalSize(1.00))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(66.00),
                              width: getHorizontalSize(295.00),
                              margin: getMargin(left: 7, top: 24),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .outlineGray200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_1_9876543210".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansBold14
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.10))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(left: 28),
                                            child: Text("lbl_phone".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoSansRegular12
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.10)))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(66.00),
                              width: getHorizontalSize(295.00),
                              margin: getMargin(left: 7, top: 12),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 20,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            decoration: AppDecoration
                                                .outlineGray200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text("lbl".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansBold16
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.10))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(left: 28),
                                            child: Text("lbl_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoSansRegular12
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.10)))))
                                  ]))),
                      CustomButton(
                          height: 62,
                          onTap: gotoHomeScreen,
                          width: 295,
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: 28),
                          fontStyle: ButtonFontStyle.InterSemiBold20),
                      Padding(
                          padding: getPadding(top: 54),
                          child: InkWell(
                              onTap: gotoForgotPasswordSccreen,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_forgot_password2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90002,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.22))),
                                    TextSpan(
                                        text: "  ".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90002,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.22))),
                                    TextSpan(
                                        text: "lbl_click_here".tr,
                                        style: TextStyle(
                                            color: ColorConstant.deepOrangeA100,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.22)))
                                  ]),
                                  textAlign: TextAlign.left))),
                      CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.signupScreen);
                          },
                          height: 62,
                          width: 326,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 65),
                          variant: ButtonVariant.OutlineBlack9003f),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 17, right: 142),
                              child: Text("lbl_or".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSansExtraBold15
                                      .copyWith(
                                          height: getVerticalSize(1.22))))),
                      GestureDetector(
                          onTap: () {
                            onTapRowgooglelogoone();
                          },
                          child: Container(
                              margin: getMargin(top: 15, right: 1, bottom: 5),
                              padding: getPadding(
                                  left: 40, top: 12, right: 40, bottom: 12),
                              decoration: AppDecoration.outlineBlack9003f1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder31),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGooglelogo1,
                                        height: getVerticalSize(36.00),
                                        width: getHorizontalSize(37.00),
                                        margin: getMargin(top: 2)),
                                    Padding(
                                        padding: getPadding(
                                            left: 14,
                                            top: 10,
                                            right: 24,
                                            bottom: 5),
                                        child: Text(
                                            "msg_continue_with_google".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtNunitoSansBlack16
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])))
                    ]))));
  }

  onTapRowgooglelogoone() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapArrowleft() {
    Get.back();
  }

  gotoHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  gotoForgotPasswordSccreen() {
    Get.toNamed(AppRoutes.forgotPasswordoneScreen);
  }
}
