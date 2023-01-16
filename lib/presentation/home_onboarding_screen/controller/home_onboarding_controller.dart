import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/presentation/home_onboarding_screen/models/home_onboarding_model.dart';

class HomeOnboardingController extends GetxController {
  Rx<HomeOnboardingModel> homeOnboardingModelObj = HomeOnboardingModel().obs;

  @override
  void onReady() {
    super.onReady();
   
  }

  @override
  void onClose() {
    super.onClose();
  }
}
