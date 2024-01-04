import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_innovations/designs/border_box_button_decorations.dart';
import 'package:qr_innovations/designs/circular_progress_indicators.dart';
import 'package:qr_innovations/designs/colors.dart';
import 'package:qr_innovations/designs/font_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Alerts {
  static void updateAlert({
    required BuildContext context,
    required String url,
  }) {
    final alert = AlertDialog(
      shape: BorderBoxButtonDecorations.defaultCardBorderRadius,
      title: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/app_icon.png',
            height: 100,
            width: 100,
          ),
          const Text(
            'New version available. Please update and continue.',
            style: TextStyles.alertContentStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: const Text(
                    'Skip',
                    style: TextStyles.smallerPrimaryColorFontStyle,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(
                    'Update',
                    style: TextStyles.smallerPrimaryColorFontStyle,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                    await launchUrl(
                      Uri.parse(url),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static void appSettingAlert({required BuildContext context}) {
    final alert = AlertDialog(
      shape: BorderBoxButtonDecorations.defaultCardBorderRadius,
      backgroundColor: AppColors.whiteColor,
      actionsPadding: const EdgeInsets.only(right: 10),
      title: const Text(
        'Error',
        style: TextStyles.smallBlackColorFontStyle,
      ),
      content: const Text(
        "You can't upload picture without the storage permission",
        style: TextStyles.smallPrimaryColorFontStyle,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Cancel',
            style: TextStyles.smallPrimaryColorFontStyle,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            openAppSettings();
          },
          child: const Text(
            'Update',
            style: TextStyles.smallPrimaryColorFontStyle,
          ),
        ),
      ],
    );
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static void successAlert(
    BuildContext context,
    String message,
  ) {
    final alert = AlertDialog(
      shape: BorderBoxButtonDecorations.defaultCardBorderRadius,
      backgroundColor: AppColors.whiteColor,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/successful_icon.png',
            height: 40,
            width: 40,
          ),
          const SizedBox(height: 15),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyles.smallPrimaryColorFontStyle,
          ),
        ],
      ),
    );
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static void errorAlert(
    BuildContext context,
    String message,
    // required BuildContext context,
    // required String message,
  ) {
    final alert = AlertDialog(
      shape: BorderBoxButtonDecorations.defaultCardBorderRadius,
      backgroundColor: AppColors.whiteColor,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/error_icon.png',
            height: 40,
            width: 40,
          ),
          const SizedBox(height: 15),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyles.smallPrimaryColorFontStyle,
          ),
        ],
      ),
    );
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static void loadingAlert({
    required BuildContext context,
    required String message,
  }) {
    final alert = AlertDialog(
      shape: BorderBoxButtonDecorations.defaultCardBorderRadius,
      backgroundColor: AppColors.whiteColor,
      title: Row(
        children: <Widget>[
          CircularProgressIndicators.primaryColorProgressIndication,
          const SizedBox(width: 20),
          Text(
            '$message.....',
            style: TextStyles.smallPrimaryColorFontStyle,
          ),
        ],
      ),
    );
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: alert,
        );
      },
    );
  }
}
