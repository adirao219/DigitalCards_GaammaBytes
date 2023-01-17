import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BandNoteScreen extends StatefulWidget {
  const BandNoteScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BandNoteScreen createState() => _BandNoteScreen();
}

class _BandNoteScreen extends State<BandNoteScreen> {
  final TextEditingController _content_controller = TextEditingController();
  final TextEditingController _heading_controller = TextEditingController();
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
                          onTap: onTapArrowleft28)
                    ])),
                styleType: Style.bgStyle_29),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(286.00),
                          margin: getMargin(left: 12),
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
                                    text: "msg_band_type_ex_note".tr,
                                    style: TextStyle(
                                        color: ColorConstant.pink900,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        height: getVerticalSize(1.00)))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _content_controller,
                          hintText: "lbl_heading".tr,
                          margin: getMargin(left: 1, top: 35)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _heading_controller,
                          hintText: "lbl_content".tr,
                          margin: getMargin(left: 1, top: 23, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 25, bottom: 55),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_save".tr)
                    ]))));
  }

  onTapArrowleft28() {
    Get.back();
  }
}
