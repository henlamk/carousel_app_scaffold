import 'package:flutter/material.dart';

getAppBar({
  bool impleadLeading = false,
}) =>
    PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        automaticallyImplyLeading: impleadLeading,
      ),
    );
