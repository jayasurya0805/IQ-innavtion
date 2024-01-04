import 'package:flutter/material.dart';
import 'package:qr_innovations/designs/colors.dart';

class BorderBoxButtonDecorations {
  static final topbar = BoxDecoration(
    color: AppColors.topbarcolor,
    borderRadius: primaryBorderRadius,
    boxShadow: const [
      BoxShadow(
        blurRadius: 2,
      ),
    ],
    // border: Border.all(
    //   color: Colors.white,
    //   width: 8,
    // ),
  );

  static final primaryBorderRadius = BorderRadius.circular(10);

  static final secondaryBorderRadius = BorderRadius.circular(5);

  static final extra25CircularBorderRadius = BorderRadius.circular(45);

  static final defaultCardBorderRadius = RoundedRectangleBorder(
    borderRadius: primaryBorderRadius,
  );

  static final checkBoxBorderRadius = RoundedRectangleBorder(
    borderRadius: secondaryBorderRadius,
  );

  static final primaryTextFieldBorderStyle = OutlineInputBorder(
    borderRadius: primaryBorderRadius,
  );

  static final textFieldShadow = BoxDecoration(
    color: AppColors.whiteColor,
    borderRadius: primaryBorderRadius,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        blurRadius: 10,
        offset: const Offset(0, 10),
      ),
    ],
  );

  static final commonButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: primaryBorderRadius,
      ),
    ),
  );

  static final commonWhiteButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: primaryBorderRadius,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.whiteColor),
  );

  static final detailsButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: AppColors.skyBlueColor,
          width: 2,
        ),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.whiteColor),
  );

  static final redButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: primaryBorderRadius,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.redColor),
  );

  static final yellowButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: primaryBorderRadius,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.yellowColor),
  );

  static final greenButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: primaryBorderRadius,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.greenColor),
  );

  static const backButton = Icon(
    Icons.arrow_back_ios_rounded,
    size: 23,
    color: AppColors.primaryColor,
  );

  static final searchTextFieldBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.whiteColor),
    borderRadius: primaryBorderRadius,
  );

  static const noImageAvatarForProfile = Padding(
    padding: EdgeInsets.all(10),
    child: CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(
        'assets/images/no_image.jpg',
      ),
      backgroundColor: AppColors.transparentColor,
    ),
  );

  static const bottomModelSheetBorderRadius = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(15),
    ),
  );

  static final dragForBottomSheet = SizedBox(
    width: 50,
    height: 5,
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static final searchBorderStyle = OutlineInputBorder(
    borderRadius: primaryBorderRadius,
    borderSide: const BorderSide(
      color: AppColors.whiteColor,
      width: 2,
    ),
  );

  // static const drawerDividerStyle = Divider(
  //   thickness: 2,
  //   color: AppColors.skeletonColor,
  // );

  // static const subDrawerDividerStyle = Divider(
  //   thickness: 2,
  //   color: AppColors.skeletonColor,
  //   indent: 20,
  //   endIndent: 20,
  // );

  // static const cardDetailsDividerStyle = Divider(
  //   thickness: 2,
  //   color: AppColors.skeletonColor,
  //   indent: 25,
  //   endIndent: 25,
  // );
}
