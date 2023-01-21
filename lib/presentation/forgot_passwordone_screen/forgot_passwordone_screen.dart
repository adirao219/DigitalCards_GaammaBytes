import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordoneScreen extends StatefulWidget {
  const ForgotPasswordoneScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordoneScreen createState() => _ForgotPasswordoneScreen();
}

class _ForgotPasswordoneScreen extends State<ForgotPasswordoneScreen> {
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
                          onTap: onTapArrowleft2)
                    ])),
                styleType: Style.bgStyle_2),
            body: SingleChildScrollView(
                padding: getPadding(left: 31, top: 29, right: 31, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 23),
                          child: Text("msg_forgot_password2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20
                                  .copyWith(height: getVerticalSize(1.00)))),
                      const SizedBox(height: 25),
                      TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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

                          // controller: _phoneController,
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
                                  color: Color.fromARGB(255, 183, 183, 183),
                                )),
                            // filled: true,
                            contentPadding: EdgeInsets.all(17.0),
                          )),
                      const SizedBox(height: 35),
                      TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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

                          // controller: _phoneController,
                          decoration: InputDecoration(
                            labelText: "lbl_otp".tr,
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
                                  color: Color.fromARGB(255, 183, 183, 183),
                                )),
                            // filled: true,
                            contentPadding: EdgeInsets.all(17.0),
                          )),
                      CustomButton(
                          onTap: (() {
                            Get.toNamed(AppRoutes.forgotPasswordtwoScreen);
                          }),
                          height: 62,
                          width: 295,
                          text: "lbl_next".tr,
                          margin: getMargin(left: 1, top: 24, bottom: 5),
                          fontStyle: ButtonFontStyle.InterSemiBold20)
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
