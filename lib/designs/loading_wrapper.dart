
import 'package:flutter/material.dart';
import 'package:qr_innovations/designs/circular_progress_indicators.dart';
import 'package:qr_innovations/designs/colors.dart';

class LoadingWrapper extends StatelessWidget {
  const LoadingWrapper({
    required this.child,
    required this.isLoading,
    super.key,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading == true)
          const Stack(
            children: [
              Opacity(
                opacity: 0.3,
                child: ModalBarrier(
                  dismissible: false,
                  color: AppColors.loadingWrapperColor,
                ),
              ),
              Center(
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Align(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicators
                          .primaryColorProgressIndication,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
