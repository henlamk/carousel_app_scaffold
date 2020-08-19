import 'package:auto_route/auto_route_annotations.dart';
import 'package:carousel_app_scaffold/ui/views/carousel/carousel_view.dart';
import 'package:carousel_app_scaffold/ui/views/details/details_view.dart';
import 'package:carousel_app_scaffold/ui/views/loading/loading_view.dart';
import 'package:carousel_app_scaffold/ui/views/login/login_view.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: CarouselView),
  MaterialRoute(page: DetailsView),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: LoadingView, initial: true),
])
class $Router {}
