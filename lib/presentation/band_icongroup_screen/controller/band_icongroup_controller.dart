import 'package:digitalcards/core/app_export.dart';import 'package:digitalcards/presentation/band_icongroup_screen/models/band_icongroup_model.dart';import 'package:flutter/material.dart';class BandIcongroupController extends GetxController {TextEditingController group33633Controller = TextEditingController();

Rx<BandIcongroupModel> bandIcongroupModelObj = BandIcongroupModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group33633Controller.dispose(); } 
 }
