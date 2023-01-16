import '../../widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreen createState() => _HomeScreen();
}
class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(108.00),
                centerTitle: true,
                title:  Container(
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
                          onTap: onTapImgArrowleft),
                           Align(
                          alignment: Alignment.bottomCenter,
                          child:  Text("lbl_home".tr,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterSemiBold20.copyWith(
                                      height: getVerticalSize(1.00))))
                    ])),
                styleType: Style.bgStyle_4),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 87, right: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_let_s_design".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoSansBold28
                              .copyWith(height: getVerticalSize(1.00))),
                      Padding(
                          padding: getPadding(top: 42),
                          child: Text("msg_choose_the_cards".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterLight18
                                  .copyWith(height: getVerticalSize(1.00)))),
                  InkWell(
                    onTap: (() {
                       Get.toNamed(AppRoutes
                                                        .myDigitalCardsScreen);
                    }),
                    child:    Container(
                          width: getHorizontalSize(326.00),
                          margin: getMargin(top: 46),
                          padding: getPadding(
                              left: 30, top: 19, right: 98, bottom: 19),
                          decoration: AppDecoration.txtOutlineBlack9003f
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder31),
                          child: Text("lbl_digital_cards".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansBlack16
                                  .copyWith(height: getVerticalSize(1.00))))),
                    InkWell(child:  Container(
                          width: getHorizontalSize(326.00),
                          margin: getMargin(top: 43, bottom: 5),
                          padding: getPadding(
                              left: 30, top: 17, right: 77, bottom: 17),
                          decoration: AppDecoration.txtOutlineBlack9003f
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder31),
                          child: Text("msg_e_greeting_cards".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoSansBlack16
                                  .copyWith(height: getVerticalSize(1.00)))),
                                  onTap: () {
                                     Get.toNamed(AppRoutes
                                                        .myEGreetingCardsScreen);
                                  },
                    )
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
