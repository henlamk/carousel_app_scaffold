import 'package:flutter/material.dart';

getAppBar({
  bool impleadLeading = false,
}) =>
    AppBar(
      title: Text('Scaffold'),
      centerTitle: true,
      automaticallyImplyLeading: impleadLeading,
    );
