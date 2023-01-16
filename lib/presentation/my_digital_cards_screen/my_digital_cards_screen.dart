import '../digital_card_options_screen/models/digital_card_options_model.dart';
import '../my_digital_cards_screen/widgets/listbusinesscardone_item_widget.dart';
import 'models/listbusinesscardone_item_model.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'models/my_digital_cards_model.dart';
class MyDigitalCardsScreen extends StatefulWidget {
  const MyDigitalCardsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDigitalCardsScreen createState() => _MyDigitalCardsScreen();
}
class _MyDigitalCardsScreen extends State<MyDigitalCardsScreen> {

  Rx<MyDigitalCardsModel> myDigitalCardsModelObj  = 
      MyDigitalCardsModel().obs;
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
                          onTap: onTapArrowleft16)
                    ])),
                styleType: Style.bgStyle_17),
            body: Container(
                width: size.width,
                padding: getPadding(left: 40, top: 28, right: 40, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_my_digital_cards".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold20
                              .copyWith(height: getVerticalSize(1.00))),
                      Padding(
                          padding: getPadding(left: 14, top: 45, right: 63),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(52.00));
                              },
                              itemCount: myDigitalCardsModelObj.value
                                  .listbusinesscardoneItemList.length,
                              itemBuilder: (context, index) {
                                ListbusinesscardoneItemModel model = myDigitalCardsModelObj
                                    .value
                                    .listbusinesscardoneItemList[index];
                                return ListbusinesscardoneItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
