// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/undetermined.dart';
import '../ui/views/carousel/carousel_view.dart';
import '../ui/views/details/details_view.dart';
import '../ui/views/loading/loading_view.dart';
import '../ui/views/login/login_view.dart';

class Routes {
  static const String carouselView = '/carousel-view';
  static const String detailsView = '/details-view';
  static const String loginView = '/login-view';
  static const String loadingView = '/';
  static const all = <String>{
    carouselView,
    detailsView,
    loginView,
    loadingView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.carouselView, page: CarouselView),
    RouteDef(Routes.detailsView, page: DetailsView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.loadingView, page: LoadingView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CarouselView: (data) {
      final args = data.getArgs<CarouselViewArguments>(
        orElse: () => CarouselViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CarouselView(
          key: args.key,
          data: args.data,
        ),
        settings: data,
      );
    },
    DetailsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DetailsView(),
        settings: data,
      );
    },
    LoginView: (data) {
      final args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(
          key: args.key,
          postSubmit: args.postSubmit,
        ),
        settings: data,
      );
    },
    LoadingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoadingView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CarouselView arguments holder class
class CarouselViewArguments {
  final Key key;
  final List<Undetermined> data;
  CarouselViewArguments({this.key, this.data});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key key;
  final Function postSubmit;
  LoginViewArguments({this.key, this.postSubmit});
}
