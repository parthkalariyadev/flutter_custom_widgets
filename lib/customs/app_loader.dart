import 'package:flutter/material.dart';

class AppLoader {
  static hideLoader(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  static Future<void> showLoader(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [CircularProgressIndicator()],
              ),
            ),
          ),
        );
      },
    );
  }
}
