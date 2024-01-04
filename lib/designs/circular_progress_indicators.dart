
import 'package:flutter/material.dart';
import 'package:qr_innovations/designs/colors.dart';

class CircularProgressIndicators {
  static const primaryColorProgressIndication = SizedBox(
    height: 30,
    width: 30,
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.primaryColor,
      ),
    ),
  );

  static const secondaryColorProgressIndication = SizedBox(
    height: 30,
    width: 30,
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.secondaryColor,
      ),
    ),
  );
}
