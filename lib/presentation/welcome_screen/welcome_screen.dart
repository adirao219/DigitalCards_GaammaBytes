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

TextEditingController _phoneController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

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
            body: SingleChildScrollView(
                padding: getPadding(left: 24, top: 26, right: 24, bottom: 26),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_welcome".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold20
                              .copyWith(height: getVerticalSize(1.00))),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Column(children: [
                            TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                // validator: (text) {
                                //   if (_emailController.text == null ||
                                //       _emailController.text.trim().isEmpty) {
                                //     return 'Please enter your email address';
                                //   }
                                //   // Check if the entered email has the right format
                                //   if (!RegExp(r'\S+@\S+\.\S+')
                                //       .hasMatch(_emailController.text)) {
                                //     return 'Please enter a valid email address';
                                //   }
                                //   if (_emailController.text.trim().length >
                                //       35) {
                                //     return 'Email should not be more than 35 characters in length';
                                //   }
                                //   return null;
                                // },
                                // onChanged: (text) =>
                                //     setState(() => _name = text),

                                controller: _phoneController,
                                decoration: InputDecoration(
                                  labelText: "lbl_phone".tr,
                                  labelStyle: AppStyle.txtNunitoSansRegular12
                                      .copyWith(
                                          height: getVerticalSize(1.10),
                                          fontSize: 15),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 183, 183, 183),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 183, 183, 183),
                                      )),
                                  // filled: true,
                                  contentPadding: EdgeInsets.all(17.0),
                                )),
                            const SizedBox(height: 35),
                            TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                // validator: (text) {
                                //   if (_emailController.text == null ||
                                //       _emailController.text.trim().isEmpty) {
                                //     return 'Please enter your email address';
                                //   }
                                //   // Check if the entered email has the right format
                                //   if (!RegExp(r'\S+@\S+\.\S+')
                                //       .hasMatch(_emailController.text)) {
                                //     return 'Please enter a valid email address';
                                //   }
                                //   if (_emailController.text.trim().length >
                                //       35) {
                                //     return 'Email should not be more than 35 characters in length';
                                //   }
                                //   return null;
                                // },
                                // onChanged: (text) =>
                                //     setState(() => _name = text),

                                controller: _phoneController,
                                decoration: InputDecoration(
                                  labelText: "lbl_password".tr,
                                  labelStyle: AppStyle.txtNunitoSansRegular12
                                      .copyWith(
                                          height: getVerticalSize(1.10),
                                          fontSize: 15),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 183, 183, 183),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 183, 183, 183),
                                      )),
                                  // filled: true,
                                  contentPadding: EdgeInsets.all(17.0),
                                )),
                          ])),
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
