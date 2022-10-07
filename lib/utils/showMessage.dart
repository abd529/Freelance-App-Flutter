// ignore_for_file: file_names

import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ShowMessage {
  showMessage(
    BuildContext context,
    String message,
  ) {
    return showToast(
      message,
      context: context,
      animation: StyledToastAnimation.slideToBottomFade,
      backgroundColor: AppColors.gradientGreen,
      dismissOtherToast: true,
      textStyle: const TextStyle(color: AppColors.white),
      position: StyledToastPosition.bottom,
    );
  }

  showErrorMessage(BuildContext context, String message) {
    return showToast(
      message,
      // duration: Duration(seconds: 2),
      context: context,
      // animation: StyledToastAnimation.slideFromTopFade,
      animation: StyledToastAnimation.slideToBottomFade,
      backgroundColor: AppColors.red,
      dismissOtherToast: true,
      textStyle: const TextStyle(color: AppColors.white),
      position: StyledToastPosition.bottom,
    );
  }
}
