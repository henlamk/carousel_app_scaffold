import 'dart:math' as math;

import 'package:carousel_app_scaffold/models/undetermined.dart';
import 'package:carousel_app_scaffold/ui/shared/ui_helpers.dart';
import 'package:carousel_app_scaffold/ui/views/carousel/widgets/carousel_entry.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'carousel_viewmodel.dart';

class CarouselView extends StatefulWidget {
  final List<Undetermined> data;

  const CarouselView({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  _CarouselViewState createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CarouselViewModel>.reactive(
      viewModelBuilder: () => CarouselViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          child: PageView(
            children: widget.data
                .map((e) => CarouselEntry(
                      data: e,
                      onTap: model.navigateToDetails,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
