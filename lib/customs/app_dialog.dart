import 'package:flutter/material.dart';

class AppDialog {
  showAlertDialog(
      BuildContext context,
      String title,
      String text,
      String positiveButtonText,
      String negativeButtonText,
      VoidCallback positiveButtonCallback,
      VoidCallback negativeButtonCallback) {
    AlertDialog alert = AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        contentPadding: const EdgeInsets.all(8),
        content: AppAlertDialog(
          title: title,
          text: text,
          positiveButtonText: positiveButtonText,
          negativeButtonText: negativeButtonText,
          positiveButtonCallback: positiveButtonCallback,
          negativeButtonCallback: negativeButtonCallback,
        ));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogWithOneButton(BuildContext context, String title, String text,
      String positiveButtonText, VoidCallback positiveButtonCallback) {
    AlertDialog alert = AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        contentPadding: const EdgeInsets.all(8),
        content: AppAlertDialogOneButton(
          title: title,
          text: text,
          positiveButtonText: positiveButtonText,
          positiveButtonCallback: positiveButtonCallback,
        ));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class AppAlertDialog extends StatefulWidget {
  final String title;
  final String text;
  final String positiveButtonText;
  final String negativeButtonText;
  final VoidCallback positiveButtonCallback;
  final VoidCallback negativeButtonCallback;
  const AppAlertDialog({
    Key? key,
    required this.title,
    required this.text,
    required this.positiveButtonText,
    required this.negativeButtonText,
    required this.positiveButtonCallback,
    required this.negativeButtonCallback,
  }) : super(key: key);

  @override
  State<AppAlertDialog> createState() => _AppAlertDialogState();
}

class _AppAlertDialogState extends State<AppAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // background
                          foregroundColor: Colors.white, // foreground
                        ),
                        onPressed: widget.negativeButtonCallback,
                        child: Text(
                          widget.negativeButtonText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // background
                          foregroundColor: Colors.white, // foreground
                        ),
                        onPressed: widget.positiveButtonCallback,
                        child: Text(
                          widget.positiveButtonText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppAlertDialogOneButton extends StatefulWidget {
  final String title;
  final String text;
  final String positiveButtonText;
  final VoidCallback positiveButtonCallback;
  const AppAlertDialogOneButton({
    Key? key,
    required this.title,
    required this.text,
    required this.positiveButtonText,
    required this.positiveButtonCallback,
  }) : super(key: key);

  @override
  State<AppAlertDialogOneButton> createState() =>
      _AppAlertDialogOneButtonState();
}

class _AppAlertDialogOneButtonState extends State<AppAlertDialogOneButton> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // background
                          foregroundColor: Colors.white, // foreground
                        ),
                        onPressed: widget.positiveButtonCallback,
                        child: Text(
                          widget.positiveButtonText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
