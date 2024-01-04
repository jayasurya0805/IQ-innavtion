
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_innovations/designs/colors.dart';

class StatusBarNavigationBarDesigns {
  static const statusBarNavigationBarDesign = SystemUiOverlayStyle(
    statusBarColor: AppColors.transparentColor,
    systemNavigationBarColor: AppColors.secondaryColor,
    systemNavigationBarDividerColor: AppColors.secondaryColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static final defaultAppBar = AppBar(
    backgroundColor: AppColors.secondaryColor,
    toolbarHeight: 0,
    elevation: 0,
  );
}
