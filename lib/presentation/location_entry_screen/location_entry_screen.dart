import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
class LocationEntryScreen extends StatefulWidget {
  const LocationEntryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationEntryScreen createState() => _LocationEntryScreen();
}
class _LocationEntryScreen extends State<LocationEntryScreen> {
  
  TextEditingController _location_controller = new TextEditingController();
  TextEditingController _latitude_controller = new TextEditingController();
  TextEditingController _longitude_controller = new TextEditingController();
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
                          onTap: onTapArrowleft7)
                    ])),
                styleType: Style.bgStyle_8),
            body: Container(
                width: size.width,
                padding: getPadding(left: 9, top: 31, right: 9, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(266.00),
                              margin: getMargin(left: 27),
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
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _location_controller,
                          hintText: "lbl_location".tr,
                          margin: getMargin(top: 64)),
                      CustomImageView(
                          imagePath: ImageConstant.imgScreenshot55,
                          height: getVerticalSize(171.00),
                          width: getHorizontalSize(344.00),
                          margin: getMargin(top: 21)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _latitude_controller,
                          hintText: "lbl_latitude".tr,
                          margin: getMargin(top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _longitude_controller,
                          hintText: "lbl_longitude".tr,
                          margin: getMargin(top: 24),
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: 62,
                          width: 295,
                          text: "lbl_next".tr,
                          margin: getMargin(top: 31, bottom: 5),
                          fontStyle: ButtonFontStyle.InterBlack16)
                    ]))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
