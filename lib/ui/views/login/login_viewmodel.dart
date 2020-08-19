import 'package:carousel_app_scaffold/app/locator.dart';
import 'package:carousel_app_scaffold/app/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  final Function postSubmit;

  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  bool acceptTermsAndConditions = false;

  LoginViewModel(this.postSubmit);

  login() async {
    if (!formKey.currentState.validate()) {
      return;
    }

    if (!acceptTermsAndConditions) {
      return;
    }

    //auth service

    //sharedprefs

    if (postSubmit == null)
      navigateTo();
    else
      postSubmit();
  }

  navigateTo() async {
    _navigationService.navigateTo(Routes.carouselView);
  }

  toggleTermsAndCondition(bool value) {
    acceptTermsAndConditions = !acceptTermsAndConditions;

    notifyListeners();
  }

  String validateNameInput(String value) {
    if (value.isEmpty) {
      return 'Bitte gib einen Namen ein';
    }
    return null;
  }

  String validateMailInput(String value) {
    if (value.isEmpty) {
      return 'Bitte gib eine E-Mail ein';
    }

    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Bitte gib eine gültige E-Mail ein';
    }
    return null;
  }
}
