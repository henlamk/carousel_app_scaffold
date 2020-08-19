import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'loading_viewmodel.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoadingViewModel>.reactive(
      viewModelBuilder: () => LoadingViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: FutureBuilder(
            future: model.loadData(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) =>
                model.onFutureBuilderBuilder(snapshot),
          ),
        ),
      ),
    );
  }
}
