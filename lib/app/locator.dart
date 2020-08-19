import 'package:carousel_app_scaffold/services/http_service.dart';
import 'package:carousel_app_scaffold/ui/views/loading/loading_view.dart';
import 'package:carousel_app_scaffold/ui/views/login/login_view.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => HttpService());
}
