import "package:flutter/material.dart";

class AuthBasePage extends StatelessWidget {
  AuthBasePage(
      {super.key,
      required this.title,
      required this.subtile,
      required this.form,
      required this.buttonTitle});

  String title;
  String subtile;
  Widget form;
  String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Flexible(
              child: Image.asset(
                "images/logo.jpg",
                width: 300,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            Text(subtile,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontSize: 18, color: Colors.black)),
            const SizedBox(height: 16),
            form,
          ],
        ),
      ),
    );
  }
}
