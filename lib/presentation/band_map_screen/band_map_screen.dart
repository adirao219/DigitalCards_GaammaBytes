import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../core/utils/osm_map.dart';

class BandMapScreen extends StatefulWidget {
  const BandMapScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BandMapScreen createState() => _BandMapScreen();
}

class _BandMapScreen extends State<BandMapScreen> {
  final TextEditingController _location_controller = TextEditingController();
  final TextEditingController _heading_controller = TextEditingController();
  final TextEditingController _lat_controller = TextEditingController();
  final TextEditingController _long_controller = TextEditingController();
  MapController _mapController = MapController();
  LatLng? finalLocation;
  bool locationSelected = false;
  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  getCurrentLocation() async {
    try {
      var checkpermission = await _handleLocationPermission();
      if (checkpermission) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        finalLocation = LatLng(position.latitude, position.longitude);
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

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
                              left: 0, top: 60, right: 0, bottom: 7)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft29)
                    ])),
                styleType: Style.bgStyle_30),
            body: Container(
                width: size.width,
                padding: getPadding(left: 9, top: 20, right: 9, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(286.00),
                              margin: getMargin(left: 27),
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
                                        text: "msg_band_type_ex_map".tr,
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
                          controller: _heading_controller,
                          hintText: "lbl_heading".tr,
                          margin: getMargin(top: 35)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _location_controller,
                          hintText: "lbl_location".tr,
                          margin: getMargin(top: 22)),
                      CustomButton(
                          text: locationSelected
                              ? "lbl_change_location".tr
                              : "lbl_select_location".tr,
                          onTap: goToLocationPage,
                          height: 60,
                          width: 250,
                          margin: getMargin(top: 15)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _lat_controller,
                          hintText: "lbl_latitude".tr,
                          margin: getMargin(top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _long_controller,
                          hintText: "lbl_longitude".tr,
                          margin: getMargin(top: 24, bottom: 5),
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

  onTapArrowleft29() {
    Get.back();
  }

  goToLocationPage() {
    Get.toNamed(AppRoutes.locationselection)?.then((value) {
      setState(() {
        if (value['latLong'] != null) {
          locationSelected = true;
          var ltlng = value['latLong'] as LatLong;
          finalLocation = LatLng(ltlng.latitude, ltlng.longitude);
          _lat_controller.text = ltlng.latitude.toString();
          _long_controller.text = ltlng.longitude.toString();
        }
      });
    });
  }
}
