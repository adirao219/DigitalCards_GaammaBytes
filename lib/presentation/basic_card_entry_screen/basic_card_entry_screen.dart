import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/core/utils/validation_functions.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BasicCardEntryScreen extends StatefulWidget {
  const BasicCardEntryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BasicCardEntryScreen createState() => _BasicCardEntryScreen();
}

// ignore_for_file: must_be_immutable
class _BasicCardEntryScreen extends State<BasicCardEntryScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _name_controller = new TextEditingController();
  TextEditingController _url_controller = new TextEditingController();
  TextEditingController _date_controller = new TextEditingController();
  TextEditingController _template_controller = new TextEditingController();
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
                          onTap: onTapArrowleft11)
                    ])),
                styleType: Style.bgStyle_12),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 22, top: 28, right: 22, bottom: 28),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 15),
                              child: Text("msg_card_type_ex_new".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoBold18.copyWith(
                                      height: getVerticalSize(1.00)))),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _name_controller,
                              hintText: "lbl_card_name".tr,
                              margin: getMargin(top: 43),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _url_controller,
                              hintText: "lbl_url_preview".tr,
                              margin: getMargin(top: 23)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _date_controller,
                              hintText: "lbl_created_date".tr,
                              margin: getMargin(top: 23)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _template_controller,
                              hintText: "lbl_template".tr,
                              margin: getMargin(top: 24),
                              textInputAction: TextInputAction.done),
                          CustomButton(
                              height: 60,
                              width: 325,
                              text: "lbl_template_view".tr,
                              margin: getMargin(left: 5, top: 31),
                              variant: ButtonVariant.OutlineBlack9003f_1,
                              shape: ButtonShape.RoundedBorder15,
                              fontStyle: ButtonFontStyle.NunitoSansRegular14),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapeEGreeting();
                              },
                              child: CustomButton(
                                  height: 62,
                                  width: 295,
                                  text: "lbl_next".tr,
                                  margin: getMargin(bottom: 72),
                                  fontStyle: ButtonFontStyle.InterBlack16,
                                  alignment: Alignment.center))
                        ])))));
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapeEGreeting() {
    Get.toNamed(AppRoutes.cardEntryScreen);
  }
}
