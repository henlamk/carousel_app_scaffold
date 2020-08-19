import 'dart:convert';

import 'package:carousel_app_scaffold/app/locator.dart';
import 'package:carousel_app_scaffold/models/undetermined.dart';
import 'package:carousel_app_scaffold/services/http_service.dart';
import 'package:carousel_app_scaffold/simple_logger.dart';
import 'package:carousel_app_scaffold/ui/views/carousel/carousel_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoadingViewModel extends BaseViewModel {
  final log = getLogger('LoadingViewModel');

  HttpService _httpService = locator<HttpService>();
  NavigationService _navigationService = locator<NavigationService>();

  loadData() async {
    await Future.delayed(Duration(seconds: 1));

    var response = await _httpService.get('/posts');

    return response.body;
  }

  onFutureBuilderBuilder(AsyncSnapshot snapshot) {
    if (snapshot.hasData) {
      navigateTo(snapshot);

      return Icon(Icons.check);
    } else
      return CircularProgressIndicator();
  }

  navigateTo(AsyncSnapshot snapshot) async {
    await Future.delayed(Duration(seconds: 1));

    var data = (json.decode(snapshot.data) as List)
        .map((d) => Undetermined.fromJson(d))
        .toList();

    _navigationService.replaceWithTransition(
      CarouselView(
        data: data,
      ),
      transition: 'downToUp',
    );
  }
}
