import 'package:carousel_app_scaffold/app/locator.dart';
import 'package:carousel_app_scaffold/models/undetermined.dart';
import 'package:carousel_app_scaffold/simple_logger.dart';
import 'package:carousel_app_scaffold/ui/views/details/details_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CarouselViewModel extends BaseViewModel {
  final log = getLogger('CarouselViewModel');

  NavigationService _navigationService = locator<NavigationService>();

  navigateToDetails(Undetermined data) {
    _navigationService.navigateWithTransition(DetailsView(data: data),
        transition: 'fade');
  }
}
